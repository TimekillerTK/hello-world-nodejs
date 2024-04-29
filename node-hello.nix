{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "node-hello";
  buildInputs = [ pkgs.nodejs ];

  src = pkgs.fetchFromGitHub {
    owner = "TimekillerTK";
    repo = "hello-world-nodejs";
    rev = "main";
    sha256 = "sha256-SXoPpAnMYlh1WiTvVNmiBKM4/5gg78jFu98bZVEoDUk=";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp -r * $out/bin
  '';
}