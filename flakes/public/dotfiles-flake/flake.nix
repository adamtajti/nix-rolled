{
  description = "This Nix Flake provides a shell which has git-crypt installed to be able to decrypt the encrypted files in the repository. It may also provide common utilities that are required to run the scripts.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils = { url = "github:numtide/flake-utils"; };
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in with pkgs; {
        devShell = pkgs.mkShell {

          # Shell and packages to be included in it
          buildInputs = [
            pkgs.zsh
            pkgs.git-crypt
          ];

          # Override the prompt in the shell
          shellHook = ''
            PS1="\[\e]0;\u@\h: \w\a\]$''\{debian_chroot:+($debian_chroot)}\[\e[38;5;10m\]\u\[\e[38;5;254m\]@\[\e[38;5;161m\]dotfiles-nix-shell\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
          '';
        };
      });
}