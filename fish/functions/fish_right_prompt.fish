function fish_right_prompt
    set -l duration $CMD_DURATION
    if test $duration -ge 5000
        set_color brblue
        set -l seconds (math -s0 $duration / 1000 % 60)
        set -l millis (math $duration % 1000)
        set -l minutes (math -s0 $duration / 60000 % 60)
        set -l hours (math -s0 $duration / 3600000)

        if test $duration -lt 60000
            printf '(%d.%02ds)' $seconds $millis
        else if test $duration -lt 3600000
            printf '(%02d:%02d.%02d)' $minutes $seconds $millis
        else
            printf '(%02d:%02d:%02d.%03d)' $hours $minutes $seconds $millis
        end
        set_color normal
    end
end
