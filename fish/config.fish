if status is-interactive

    set -g fish_greeting ""

    echo ""
    echo "  1 CREDIT"
    echo "  PRESS ENTER TO CONTINUE"
    echo ""

    starship init fish | source

    alias ls="eza --icons --group-directories-first"
    alias ll="eza -la --icons --group-directories-first"
    alias tree="eza --tree --icons"
    alias cat="batcat --theme=ansi"
    alias g="git"

end

function fish_prompt

    set -l last_status $status

    if test $last_status -ne 0
        set_color FF2A2A
        echo -n "✕ "
    else
        set_color 39FF14
        echo -n "► "
    end

    set_color normal

end

set -U fish_color_normal E8E8E8
set -U fish_color_command 00E5FF
set -U fish_color_keyword FF6A00
set -U fish_color_quote 39FF14
set -U fish_color_redirection FFD500
set -U fish_color_end FF2A2A
set -U fish_color_error FF2A2A
set -U fish_color_param E8E8E8
set -U fish_color_comment 555555
set -U fish_color_selection --background=FF2A2A
set -U fish_color_search_match --background=333333
set -U fish_color_operator FF00FF
set -U fish_color_escape 00E5FF
set -U fish_color_autosuggestion 333333
