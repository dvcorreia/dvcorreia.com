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
          overlays = [ self.overlays.default ];
        }
      );

      version = self.shortRev or self.dirtyShortRev;
      commitHash = self.rev or self.dirtyRev;
    in
    {
      overlays.default = final: prev: {
        dvcorreia-website = final.callPackage ./package.nix {
          inherit version commitHash;
        };
        vid2web = final.callPackage ./nix/pkgs/vid2web.nix { };
      };

      formatter = forAllSystems (system: (nixpkgsFor.${system}).nixfmt-tree);

      packages = forAllSystems (system: {
        default = (nixpkgsFor.${system}).dvcorreia-website;
        dvcorreia-website = (nixpkgsFor.${system}).dvcorreia-website;
        vid2web = (nixpkgsFor.${system}).vid2web;
      });

      devShells = forAllSystems (
        system: with nixpkgsFor.${system}; {
          default = mkShell {
            inputsFrom = [ dvcorreia-website ];
            packages = [
              git
              gnumake
              vid2web
            ];
          };
        }
      );
    };
}
