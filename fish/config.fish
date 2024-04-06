# Start Hyprland at login
# if status is-login
#    if test -z "$DISPLAY" -a $XDG_VTNR = 1
#        exec Hyprland
#    end
# end

if status is-interactive
    # Commands to run in interactive sessions can go here
    # Autostart zellij
    if not set -q ZELLIJ
        if test "$ZELLIJ_AUTO_ATTACH" = "true"
            zellij attach -c
        else
            zellij -s Raven
        end

        if test "$ZELLIJ_AUTO_EXIT" = "true"
            kill $fish_pid
        end
    end
end

#starship init fish | source


# pnpm
set -gx PNPM_HOME "/home/raven/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
