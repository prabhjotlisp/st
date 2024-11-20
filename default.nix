let
  pkgs= import <nixpkgs> {};
in
{
  st = pkgs.stdenv.mkDerivation {
    pname = "st";
    version = "1.0";

    src = ./.;

    buildInputs = [];

    installPhase = ''
      mkdir -p $out/bin
      cp st $out/bin
    '';

  };
}
