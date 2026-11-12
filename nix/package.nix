{
  lib,
  stdenv,
  nodejs,
  pnpm,
  pnpmConfigHook,
  fetchPnpmDeps,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "dvcorreia-com";
  version = "0-unstable";

  src = ../.;

  nativeBuildInputs = [
    nodejs
    pnpmConfigHook
    pnpm
  ];

  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs) pname version src;
    inherit pnpm;
    fetcherVersion = 5;
    hash = "sha256-Bl5i+4XmiClGgxlS2SJTJJSaKUxjfa7r9YToQd/qVQY=";
  };

  # astro's config loader resolves `localhost` during the build. The Darwin
  # build sandbox blocks that lookup by default, so allow local networking.
  __darwinAllowLocalNetworking = true;

  env.ASTRO_TELEMETRY_DISABLED = 1;

  buildPhase = ''
    pnpm run build
  '';

  installPhase = ''
    mkdir -p $out/share/${finalAttrs.pname}
    cp -r dist/* $out/share/${finalAttrs.pname}/
  '';
})
