function print_help() {
    echo "alias \"esync\", \"esyncstatus\" and \"killesync\" do not exist on system"
    echo "using vanilla commands"

    if [ -f "$HOME/bin/kill_evince_synctex.zsh" ]; then
        echo "please create the following file : $HOME/bin/kill_evince_synctex.zsh"
        echo "with the following content :"
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' "-"
        echo 'code'
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' "-"
        echo '
source \$HOME/.custom/utils/colors.zsh

echo "\${YELLOW}evince sync running shellscripts\${NOCOLOR}"
for PID in \$(pgrep -f "evince_synctex.zsh"); do COMMAND=\$(ps -p \$PID -o comm=); echo "Running command for PID \$PID (\$COMMAND)"; done

echo "\${YELLOW}evince sync running dbus-monitor\${NOCOLOR}"
for PID in \$(pgrep -f dbus-monitor\ type=signal\,interface=org.gnome.evince.Window\,member=SyncSource); do COMMAND=\$(ps -p \$PID -o comm=); echo "Running command for PID \$PID (\$COMMAND)"; done

echo "\${YELLOW}Killing theses tasks\${NOCOLOR}"
for PID in \$(pgrep -f "evince_synctex.zsh"); do COMMAND=\$(ps -p \$PID -o comm=); echo "Killing command for PID \$PID (\$COMMAND)"; kill \$PID; done
for PID in \$(pgrep -f dbus-monitor\ type=signal\,interface=org.gnome.evince.Window\,member=SyncSource); do COMMAND=\$(ps -p \$PID -o comm=); echo "Killing command for PID \$PID (\$COMMAND)"; kill \$PID; done
'

        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' "-"
    fi
    if [ ! -f "$HOME/bin/evince_synctex.zsh" ]; then
        echo 'download the following file :
> https://github.com/Vinno97/evince-synctex/
and put it in $HOME/bin/evince_synctex.zsh"'
    fi

    echo 'please add the following aliases :'

    echo '
alias esync="$HOME/bin/evince_synctex.zsh listen code --goto %f:%l > /dev/null 2>&1 &"
alias killesync="ps aux | grep evince_synctex | grep -v grep"
alias esyncstatus="zsh $HOME/bin/kill_evince_synctex.zsh"
'
}

# $ SCRIPT


if [[ -z "$(command -v esync)" && -z "$(command -v esyncstatus)" && -z "$(command -v killesync)" ]]; then

    echo "alias \"esync\", \"esyncstatus\" and \"killesync\" exist on system"

    if [ -z $(command esyncstatus) ]; then
        command esync
    else
        command killesync
    fi
else
    # print_help
fi

