set -x VIRTUAL_ENV_DISABLE_PROMPT 0

# Keep empty to remove default greeting
function fish_greeting
end

# Aliases (ported from ~/.dotfiles_personal/.aliases)
alias cd.. 'cd ../'
alias .. 'cd ../'
alias ... 'cd ../../'
alias .3 'cd ../../../'
alias .4 'cd ../../../../'
alias de deactivate
alias ls 'ls --color=always -1F'
alias ll 'ls -la'
alias noise 'play -c 2 -n synth pinknoise mix synth sine amod 0.07 90 band -n 2000 1q vol 0.9'
alias grep 'grep --color=always'

if status is-interactive
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniconda/base/bin" $PATH
    end
end
# <<< conda initialize <<<
