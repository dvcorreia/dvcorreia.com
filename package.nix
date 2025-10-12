{
  lib,
  stdenv,
  hugo,
  nodejs,
  pnpm_9,
  version ? "0.0.0",
  commitHash ? "unknown",
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "dvcorreia-website";
  inherit version;

  src = ./.;

  nativeBuildInputs = [
    hugo
    nodejs
    pnpm_9.configHook
  ];

  pnpmDeps = pnpm_9.fetchDeps {
    pname = "dvcorreia-website-pnpm-deps";
    inherit version;
    src = ./.;
    fetcherVersion = 2;
    hash = "sha256-zP1L7g57Fl5a/xrIPgHi0o0wD/UCN1knh6K3ED9yiEQ=";
  };

  buildPhase = ''
    export PATH=$pnpmDeps/bin:$PATH
    hugo --minify --environment production --destination=public
  '';

  installPhase = ''
    mkdir -p $out/share/${finalAttrs.pname}
    cp -r public/* $out/share/${finalAttrs.pname}/
  '';

  meta = {
    description = "Static website for dvcorreia.com";
    license = lib.licenses.mit;
    platforms = lib.platforms.all;
  };
})
