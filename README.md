# Dotfiles
This repo contains the macOS setup that I do when I get a new machine.

> Note:
> May you, the curious programmer that ended up here, use it for inspiration but be warned that I don't guarantee a bug-free experience.

## Configure Terminal
1. In a new machine, clone this repo in `~/` and rename to `.dotfiles_personal`
2. In `~/` add a `.bashrc` with the command `[ -n "$PS1" ] && source ~/.dotfiles_personal/.bash_profile;`
3. In `~/` add a `.bash_profile` with the command `source ~/.dotfiles_personal/.bash_profile;`

## Configure iTerm
iTerm2 is stylized using Fish. To configure it:
1. Install iTerm2, Fish and OhMyFish! and load the theme **neolambda**.
2. Fild the file `ila/.config/fish/config.fish` and write the contents:
```
source ~/.dotfiles_personal/fish/config.fish
```
3. Find the omf (OhMyFish!) themes folder and copy `fish_prompt.fish` and `fish_righ_prompt.fish`.

## Configure VSCode
1. Install theme `Railgun` and file icon theme `Chalice`.
2. In VSCode, launch the command `>Open User Settings (JSON)` and copy the contents of `vscode/settings.json`.

## Other configuration
1. In `~/` add a `.gitconfig` with the content:
```
[include]
  path = ~/.dotfiles_personal/.my_gitconfig
```
5. Install the Git Autocompletion executable with:
```
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
```
6. Run `./.config_macos.sh` to config macOS settings.

**IMP: Always push changes made locally to keep them in sync here!**

