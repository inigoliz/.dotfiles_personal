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

    # Conda / virtualenv
    if set -q CONDA_DEFAULT_ENV
        echo -n $green"($CONDA_DEFAULT_ENV) "
    else if set -q VIRTUAL_ENV
        echo -n $green"("(basename $VIRTUAL_ENV)") "
    end

    echo -n $user_color$USER
    echo -n $white" in "
    echo -n $green(prompt_pwd --dir-length=0)

    # Git status (matching bash: branch [+!?$])
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

        echo -n $white" on "$violet$branch$blue$dirty
    end

    echo
    echo -n $white'$ '$reset
end
