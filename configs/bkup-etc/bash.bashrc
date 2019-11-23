#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias bright='sudo nano /sys/class/backlight/intel_backlight/brightness'
alias short='sudo nano /etc/bash.bashrc'
alias reshort='source /etc/bash.bashrc'
alias nightmode='redshift -l 33:97'
alias i3conf='sudo nano ~/.config/i3/config'
alias bar='barrierc lt01928'
alias trans='picom -b'
alias transconf='sudo nano /etc/xdg/compton.conf'
alias vol='alsamixer'
alias display='arandr'
alias remote='remmina'
alias clr='clear'
alias calc='gnome-calculator'
alias mail='thunderbird'
alias xtrans='pkill picom'
alias i3barconf='sudo nano ~/.config/i3status/config'
alias xbar='pkill barrier'
alias spot='spotify'
alias qt='qutebrowser'
alias gitcom='git commit -m updates'
alias gitpush='git push -u origin master'
alias gitadd='git add --all'
alias conkyconf='sudo nano ~/.conkyrc'
alias xpad='xinput disable "Synaptics TM2911-001"'
alias pad='xinput enable "Synaptics TM2911-001"'
alias xtouch='xinput disable "ELAN Touchscreen"'
alias touch='xinput enable "ELAN Touchscreen"'
alias touchconf='sudo nano /etc/X11/xorg.conf.d/99-no-touchscreen.conf'
alias team='teamviewer --daemon start'
alias xteam='teamviewer --daemon stop'
alias weather='sudo nano ~/.config/i3/weather.sh'
alias blue='systemctl start bluetooth'
alias xblue='systemctl stop bluetooth'
alias bt='bluetoothctl'
alias bkup='sudo cp /etc/bash.bashrc ~/configs/bkup-etc/bash.bashrc'
alias xpoint='xinput set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 0'
alias point='xinput set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 1'
alias vpn='sudo systemctl start windscribe'
alias xvpn='sudo systemctl stop windscribe'
alias listusb='dmesg | tail'
alias mouse='xinput set-prop 15 "libinput Natural Scrolling Enabled" 0'
alias xmouse='xinput set-prop 15 "libinput Natural Scrolling Enabled" 1'
