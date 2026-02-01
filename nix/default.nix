pkgs: {
  default = pkgs.callPackage ./package.nix { };
  dvcorreia-com = pkgs.callPackage ./package.nix { };
  vid2web = pkgs.callPackage ./vid2web.nix { };
}
