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
   - Adjust the 'ANSI blue' color to `#FFB500` (orange).

<p align="center">
 <img src="https://github.com/user-attachments/assets/990efe93-044b-4aaf-a79d-c0f41192c70c" alt="Terminal Appearance" width=90%>
</p>

## Configure Ghostty + Fish
Ghostty is configured with Fish as the default shell, using a custom Solarized Dark-inspired prompt.

1. Install Ghostty, Fish and fortune:
```bash
brew install fish fortune
```
2. Symlink the Fish config and prompt functions:
```bash
mkdir -p ~/.config/fish/functions

ln -s ~/.dotfiles_personal/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles_personal/fish/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
ln -s ~/.dotfiles_personal/fish/functions/fish_right_prompt.fish ~/.config/fish/functions/fish_right_prompt.fish
```
3. Symlink the Ghostty config:
```bash
mkdir -p ~/.config/ghostty
ln -s ~/.dotfiles_personal/ghostty/config ~/.config/ghostty/config
```
4. Initialize conda for Fish (if using conda):
```bash
conda init fish
```

5. Remove the 'Last login ...' message:
```bash
touch ~/.hushlogin
```

## Configure VSCode
The settings file has to be symlinked so that VSCode uses the one in this repo:
- VSCode settings file: `~/Library/Application Support/Code/User/settings.json`

```bash
ln -s ~/.dotfiles_personal/vscode/settings.json ~/Library/Application\ Support/Code/User/
```

<img width="1015" height="468" alt="image" src="https://github.com/user-attachments/assets/a2d97d87-f454-4e26-8d40-0c68236f8965" />

Requirements:
- Railgun theme

## Configure vim
Link config to the one in this repo:
```
ln -s ~/.dotfiles_personal/.vimrc ~/.vimrc
```

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

