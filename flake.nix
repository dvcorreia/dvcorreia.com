{
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      forAllSystems = lib.genAttrs lib.systems.flakeExposed;
    in
    {
      packages = forAllSystems (system: import ./nix nixpkgs.legacyPackages.${system});
      overlays.default = final: _: import ./nix final.pkgs;

      formatter = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        pkgs.nixfmt-tree.override {
          runtimeInputs = [ pkgs.pnpm ];
          settings.formatter.prettier = {
            command = "pnpm";
            options = [
              "exec"
              "prettier"
              "--write"
              "--ignore-unknown"
            ];
            includes = [ "*" ];
            excludes = [ "*.nix" ];
          };
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ self.overlays.default ];
          };
        in
        {
          default = pkgs.mkShell {
            inputsFrom = [ pkgs.dvcorreia-com ];
          };
        }
      );
    };
}
