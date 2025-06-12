{
  description = "dvcorreia.com website";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      supportedSystems = [
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
        "x86_64-linux"
      ];

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      nixpkgsFor = forAllSystems (
        system:
        import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        }
      );
    in
    {
      overlay = import ./nix/pkgs;
      formatter = forAllSystems (system: (nixpkgsFor.${system}).nixfmt-tree);
      devShells = forAllSystems (
        system: with nixpkgsFor.${system}; {
          default = mkShell {
            packages = [
              git
              gnumake
              hugo
              vid2web
            ];
          };
        }
      );
    };
}
