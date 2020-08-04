printf "Updating Termux!\n"
pkg update && pkg upgrade && [[ -n $(command -v python3) ]] && pkg install python3
python3 -m pip install request
sleep 3
clear
printf "\nReady For DoS"
read -p $"Target IP: " ip

printf "Before filling the port, please check first"
read -p $"Port     : " port
python3 "lopyuall.py" -s $ip -p $port
