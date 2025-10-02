# Dotfiles
This repo contains the macOS setup that I like to make my machine feel cozy.

> Note: May you, the curious programmer that ended up here, use it for inspiration but be warned that I don't guarantee a bug-free experience.

## Configure Terminal
1. In a new machine, clone this repo in `~/` and rename to `.dotfiles_personal`
2. In `~/` add a `.bashrc` with the command `[ -n "$PS1" ] && source ~/.dotfiles_personal/.bash_profile;`
3. In `~/` add a `.bash_profile` with the command `source ~/.dotfiles_personal/.bash_profile;`
4. In `Terminal > Settings` in the default profile:
   - Adjust the font to `SF Mono Regular 14`
   - Adjust the background color to `black` with `90%` opacity and `50%` blur.
   - Adjust the font color for `Text` and `Bold text` to white, and selection to `#755337`.
   - Adjust the window to `80 columns` and `30 rows`.
   - Adjust the light blue ANSI color to `#FFB500` (orange).

<p align="center">
 <img src="https://github.com/user-attachments/assets/990efe93-044b-4aaf-a79d-c0f41192c70c" alt="Terminal Appearance" width=90%>
</p>

## Configure iTerm
iTerm2 is stylized using Fish. To configure it:
1. Install iTerm2, Fish and OhMyFish! and load the theme **neolambda**.
2. Fild the file `~/.config/fish/config.fish` and write the contents:
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
6. Run `.config_macos.sh` to config macOS settings.
7. Other settings:
   - Trackpad speed: `8/10`

**IMP: Always push changes made locally to keep them in sync here!**

