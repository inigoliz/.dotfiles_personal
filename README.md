# Dotfiles (personal laptop)

1. In a new machine, clone this repo in `~/`
2. In `~/` add a `.bashrc` with the command `[ -n "$PS1" ] && source ~/.dotfiles_personal/.bash_profile;`
3. In `~/` add a `.bash_profile` with the command `source ~/.dotfiles_personal/.bash_profile;`
4. In add a `.gitconfig` with the content ```bash
[include]
  path = ~/.dotfiles_personal/.my_gitconfig
```

