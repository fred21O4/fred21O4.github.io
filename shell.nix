{pkgs ? import <nixpkgs> {}, ...}:
pkgs.mkShell {
  packages = with pkgs; [
    nodejs
    alejandra
    (pkgs.writeScriptBin "nix-formatter" ''
      alejandra $@
    '')
  ];
}
