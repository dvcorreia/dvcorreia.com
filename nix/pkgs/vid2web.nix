# Generates a h264 and av1 files from a provided video.
# It complements the layouts/shortcodes/video.html shortcode.
# ref: https://evilmartians.com/chronicles/better-web-video-with-av1-codec

{
  ffmpeg,
  writeScriptBin,
}:

writeScriptBin "vid2web" ''
  #!/usr/bin/env bash
  set -euo pipefail

  show_help() {
    cat << EOF
  Usage: vid2web [OPTIONS] INPUT_VIDEO

  Converts video to web-optimized H.264 and AV1 formats.
  Creates .h264.mp4 and .av1.mp4 files.

  OPTIONS:
    -h, --help     show this help
    -m, --mute     remove audio track

  EXAMPLES:
    vid2web video.mov
    vid2web --mute video.mp4
  EOF
  }

  MUTE=false

  # parse arguments
  while [[ $# -gt 0 ]]; do
    case $1 in
      -h|--help)
        show_help
        exit 0
        ;;
      -m|--mute)
        MUTE=true
        shift
        ;;
      -*)
        echo "unknown option: $1" >&2
        show_help
        exit 1
        ;;
      *)
        break
        ;;
    esac
  done

  if [[ $# -eq 0 ]]; then
    echo "error: input video file required" >&2
    show_help
    exit 1
  fi

  INPUT="$1"

  if [[ ! -f "$INPUT" ]]; then
    echo "error: file '$INPUT' not found" >&2
    exit 1
  fi

  # generate output filenames
  BASENAME="''${INPUT%.*}"
  H264_OUTPUT="''${BASENAME}.h264.mp4"
  AV1_OUTPUT="''${BASENAME}.av1.mp4"

  if [[ "$MUTE" == "true" ]]; then
    ${ffmpeg}/bin/ffmpeg -i "$INPUT" \
      -map_metadata -1 \
      -an \
      -c:v libx264 \
      -crf 24 \
      -preset veryslow \
      -profile:v main \
      -pix_fmt yuv420p \
      -movflags +faststart \
      -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
      -y "$H264_OUTPUT"
  else
    ${ffmpeg}/bin/ffmpeg -i "$INPUT" \
      -map_metadata -1 \
      -c:a aac \
      -c:v libx264 \
      -crf 24 \
      -preset veryslow \
      -profile:v main \
      -pix_fmt yuv420p \
      -movflags +faststart \
      -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
      -y "$H264_OUTPUT"
  fi

  if [[ "$MUTE" == "true" ]]; then
    ${ffmpeg}/bin/ffmpeg -i "$INPUT" \
      -map_metadata -1 \
      -an \
      -c:v libaom-av1 \
      -crf 32 \
      -b:v 0 \
      -cpu-used 6 \
      -row-mt 1 \
      -tiles 2x2 \
      -pix_fmt yuv420p \
      -movflags +faststart \
      -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
      -y "$AV1_OUTPUT"
  else
    ${ffmpeg}/bin/ffmpeg -i "$INPUT" \
      -map_metadata -1 \
      -c:a libopus \
      -c:v libaom-av1 \
      -crf 32 \
      -b:v 0 \
      -cpu-used 6 \
      -row-mt 1 \
      -tiles 2x2 \
      -pix_fmt yuv420p \
      -movflags +faststart \
      -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" \
      -y "$AV1_OUTPUT"
  fi
''
