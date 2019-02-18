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
alias trans='sudo nano /etc/xdg/compton.conf'
alias vol='alsamixer'
alias display='arandr'
alias remote='remmina'
alias clr='clear'
alias calc='gnome-calculator'
alias mail='thunderbird'
alias xtrans='pkill compton'
alias i3barconf='sudo nano ~/.config/i3status/config'
alias xbar='pkill barrier'
alias spot='spotify'
alias qt='qutebrowser'
alias gitcom='git commit -m'
alias gitpush='git push -u origin master'
alias conkyconf='sudo nano ~/.conkyrc'
