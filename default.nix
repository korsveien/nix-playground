let
  pkgs = import <nixpkgs> {};
in
{
  hello = pkgs.callPackage ./hello.nix { audience = "people"; };
  hello-folks = hello.override { audience = "folks"; };
}
