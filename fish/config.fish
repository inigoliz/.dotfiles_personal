# Environment variables
export VIRTUAL_ENV_DISABLE_PROMPT=0
export PATH="/Users/ila/Library/Python/3.9/bin:$PATH"
export PYTHONPATH="/Users/ila/Developer/teenygrad:$PYTHONPATH"
export PYTHONPATH="/Users/ila/Developer/tinygrad:$PYTHONPATH"

# Other initialization
function fish_greeting
    echo (set_color brblue)
    fortune
    echo (set_color white)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
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
