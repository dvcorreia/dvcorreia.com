{
  lib,
  stdenv,
  hugo,
  nodejs,
  pnpm,
  pnpmConfigHook,
  fetchPnpmDeps,
  tailwindcss_4,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "dvcorreia-com";
  version = "0-unstable";

  src = ../.;

  nativeBuildInputs = [
    hugo
    nodejs
    pnpmConfigHook
    pnpm
    tailwindcss_4
  ];

  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs) pname version src;
    fetcherVersion = 3;
    hash = "sha256-5VqqqoBK9WVj9cMQ/VXNsO71oUUC2ed5Bqb7h0Z9hLY=";
  };

  buildPhase = ''
    export PATH=$pnpmDeps/bin:$PATH
    hugo --minify --environment production --destination=public
  '';

  installPhase = ''
    mkdir -p $out/share/${finalAttrs.pname}
    cp -r public/* $out/share/${finalAttrs.pname}/
  '';
})
