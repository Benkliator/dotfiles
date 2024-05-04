# Run the following if in non-graphical tty1
#logdir="${XDG_STATE_HOME:-$HOME/.local/state}/sway"
#
#if [[ ! -e "$logdir" ]]; then
#    mkdir -p "$logdir"
#fi
#
#if [[ -z "${WAYLAND_DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]; then
#    wal -Rqet
#    export MOZ_ENABLE_WAYLAND="1"
#    export SDL_VIDEODRIVEVER="wayland"
#    export XDG_CURRENT_DESKTOP="sway"
#    export QT_QPA_PLATFORM="wayland"
#    exec sway-nvidia > "$logdir/wayland-session.log" 2> "$logdir/wayland-session.errors"
#fi
