{
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      forAllSystems = lib.genAttrs lib.systems.flakeExposed;
      nixpkgsFor = forAllSystems (
        system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlays.default ];
        }
      );
    in
    {
      packages = forAllSystems (system: import ./nix nixpkgs.legacyPackages.${system});
      overlays.default = final: _: import ./nix final.pkgs;

      apps = forAllSystems (
        system:
        let
          pkgs = nixpkgsFor.${system};
          devScript = pkgs.writeShellApplication {
            name = "hugo-server";
            runtimeInputs = pkgs.dvcorreia-com.nativeBuildInputs;
            text = "hugo server -D --noHTTPCache --enableGitInfo";
          };
        in
        {
          default = {
            type = "app";
            program = "${devScript}/bin/hugo-server";
          };
        }
      );

      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt-tree);

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgsFor.${system};
        in
        {
          default = pkgs.mkShell {
            inputsFrom = [ pkgs.dvcorreia-com ];
            packages = with pkgs; [
              git
              opencode
            ];
          };
        }
      );
    };
}
