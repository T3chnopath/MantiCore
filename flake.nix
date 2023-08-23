{
  description = "Manticore Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-22.11";
    nixpkgsUnstable.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgsUnstable, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: let
        pkgs = import nixpkgs { inherit system; };
        pkgsUnstable = import nixpkgsUnstable { inherit system; };
      in {
        packages = rec {
          default = pkgs.stdenv.mkDerivation {
            name = "manticore";
            src = ./.;

            buildInputs = with pkgs; [
              python39
              cmake
            ];
          };

        };
      });
}