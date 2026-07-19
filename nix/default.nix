pkgs: {
  default = pkgs.callPackage ./package.nix { };
  dvcorreia-com = pkgs.callPackage ./package.nix { };
}
