while true; do xsetroot -name "| RAM: I:$(free -m | grep Mem: | cut -c 13-22 | xargs -n 1 bash -c 'echo $(($1/1000))' args) GB, U: $(free -m | grep Mem: | cut -c 26-36 | xargs -n 1 bash -c 'echo $(($1/1000))' args)  | $(uptime | cut -c 31-60) | $(date +"%a %d.%m.%y %H:%M:%S")"; sleep 2; done &
exec dwm
