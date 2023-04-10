# nix-rolled

These are my Nix Rolled system management Nix Derivations, Flakes, Scripts, etc., in a single Git repository.

## Requirements

- **Git**: To clone this repository.
- **Nix**: To build and/or run Nix Derivations, Flakes, Scripts, etc., in this project.

## Getting Started

Read up on the initialization procedure at [./flakes/public/dotfiles-flake/README.md](./flakes/public/dotfiles-flake/README.md).

## Goals

- The `$HOME` directory should be bootstrapped by [home-manager](https://github.com/nix-community/home-manager).
- Sensitive data should be encrypted so that the rest can be shared with others.

## Structure

- `nixpkgs`: Contains Nix Derivations which can be used in Nix Flakes.
- `flakes`: Contains Nix Flakes that are used to enter different development environments.
- `scripts`: Contains Scripts to speed up my workflows.
- `assets`: Contains Assets to be referenced Derivations, Flakes, Scripts, etc.

Each directory may or may not contain these further subfolders:

- `public`: Signals that these files are public and can be viewed by anyone.
- `private`: Contains sensitive data that are encrypted with `git-crypt`.

