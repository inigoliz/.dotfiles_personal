function fish_prompt
    set -l last_status $status

    # Solarized Dark palette (matching bash tput setaf indices)
    set -l green (set_color 5faf5f)    # setaf 71
    set -l orange (set_color d75f00)   # setaf 166
    set -l white (set_color ffffff)    # setaf 15
    set -l violet (set_color 5f5faf)   # setaf 61
    set -l blue (set_color afd7ff)     # setaf 153
    set -l red (set_color af0000)      # setaf 124
    set -l reset (set_color normal)

    if test (id -u) -eq 0
        set user_color $red
    else
        set user_color $orange
    end

    echo

    # Conda / virtualenv prefix (computed but printed after width calc)
    set -l env_prefix ""
    if set -q CONDA_DEFAULT_ENV
        set env_prefix "($CONDA_DEFAULT_ENV) "
    else if set -q VIRTUAL_ENV
        set env_prefix "("(basename $VIRTUAL_ENV)") "
    end

    # Path with ~ substitution for $HOME
    set -l path_display $PWD
    if string match -q -- "$HOME" $PWD
        set path_display '~'
    else if string match -q -- "$HOME/*" $PWD
        set path_display '~'(string sub -s (math (string length -- $HOME) + 1) -- $PWD)
    end

    # Git suffix (build plain + colored versions; plain is for width math)
    set -l git_plain ""
    set -l git_colored ""
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set -l branch (git symbolic-ref --quiet --short HEAD 2>/dev/null
                        or git describe --all --exact-match HEAD 2>/dev/null
                        or git rev-parse --short HEAD 2>/dev/null
                        or echo "(unknown)")
        set -l dirty ""

        if not git diff --quiet --ignore-submodules --cached 2>/dev/null
            set dirty $dirty"+"
        end
        if not git diff-files --quiet --ignore-submodules -- 2>/dev/null
            set dirty $dirty"!"
        end
        if test -n "$(git ls-files --others --exclude-standard 2>/dev/null)"
            set dirty $dirty"?"
        end
        if git rev-parse --verify refs/stash >/dev/null 2>&1
            set dirty $dirty'$'
        end

        if test -n "$dirty"
            set dirty " [$dirty]"
        end

        set git_plain " on $branch$dirty"
        set git_colored $white" on "$violet$branch$blue$dirty
    end

    # Truncate the middle of the path if the line would overflow the terminal.
    # Only the path is shortened — username, " in ", and git suffix stay intact.
    set -l cols $COLUMNS
    if test -z "$cols"; or test "$cols" -le 0
        set cols 80
    end
    set -l fixed (string length -- "$env_prefix$USER in $git_plain")
    set -l avail (math $cols - $fixed)
    set -l plen (string length -- $path_display)
    if test $avail -ge 8; and test $plen -gt $avail
        set -l keep (math $avail - 3)
        set -l left (math --scale=0 $keep / 2)
        set -l right (math $keep - $left)
        set path_display (string sub -l $left -- $path_display)"..."(string sub -s (math $plen - $right + 1) -- $path_display)
    end

    if test -n "$env_prefix"
        echo -n $green$env_prefix
    end
    echo -n $user_color$USER
    echo -n $white" in "
    echo -n $green$path_display
    if test -n "$git_colored"
        echo -n $git_colored
    end

    echo
    echo -n $white'$ '$reset
end
