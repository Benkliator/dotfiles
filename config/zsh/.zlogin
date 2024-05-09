sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf
sudo wpa_cli

logdir="${XDG_STATE_HOME:-$HOME/.local/state}/sway"

if [[ ! -e "$logdir" ]]; then
    mkdir -p "$logdir"
fi

if [[ -z "${WAYLAND_DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]]; then
    export MOZ_ENABLE_WAYLAND="1"
    export SDL_VIDEODRIVEVER="wayland"
    export XDG_CURRENT_DESKTOP="sway"
    export QT_QPA_PLATFORM="wayland"
    exec sway > "$logdir/wayland-session.log" 2> "$logdir/wayland-session.errors"
fi
