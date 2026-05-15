set -x VIRTUAL_ENV_DISABLE_PROMPT 0

# Keep empty to remove default greeting
function fish_greeting
end

# Committed aliases
if test -r ~/.dotfiles_personal/.aliases
    source ~/.dotfiles_personal/.aliases
end

# Local non-committed aliases
if test -r ~/.aliases
    source ~/.aliases
end

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
