# unfied shell dotfile solution (`bash` `zsh`)

forked from [chr4/shellrc][1] and modified to be able to be `git submodule`d in
to a `stow` style `dotfiles` repository, then `ln`d into respective subfolders.

[1]: https://github.com/chr4/shellrc

sample usage:

```bash
cd ~/dotfiles # assumes your `dotfiles` repo is already a `stow` style repo
git submodule add https://github.com/samm81/shellrc.git shellrc

mkdir -p bash/.bashrc.d/
ln -s ../shellrc/.bash_profile bash/
ln -s ../shellrc/.bashrc bash/

mkdir -p zsh/.zshrc.d/
ln -s ../shellrc/.zprofile zsh/
ln -s ../shellrc/.zshrc zsh/

mkdir -p shellrc.d/.rc.d/ shellrc.d/.login.d/
# `stow` away
# if `stow`ing `bash/` or `zsh/` also make sure to `stow shellrc.d/`
```

- `shellrc.d/login.d/`: generic interactive login shell configuration
- `shellrc.d/rc.d/`: generic interactive non-login shell configuration
- `bash/.bashrc.d/`: interactive non-login `bash` configuration
- `zsh/.zshrc.d/`: interactive non-login `zsh` configuration
