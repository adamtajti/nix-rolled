# dotfiles-flake

This Nix Flake provides a shell which has [git-crypt](https://github.com/AGWA/git-crypt) installed to be able to decrypt the encrypted files in the repository. It may also provide common utilities that are required to run the scripts.

## Usage

Enter into the dotfiles-nix-shell by running this commmand in the current directory:

```bash
nix develop
```

### Decrypt the Encrypted Files

Make sure that your GPG keys are imported and you're one of the collaborators in the repositories who are authorized to decrypt these files.

Navigate back to the root of the repository and issue these commands to decrypt the encrypted files:

```bash
git-crypt unlock
```
