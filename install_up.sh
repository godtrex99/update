#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#rm /usr/bin/menu-ssh
rm /usr/bin/menu-trojan
rm /usr/bin/menu-vmess
echo -e "[INFO] Remove Old Script"

sleep 2
echo -e " [INFO] Downloading New Script"
#wget -qc -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/godtrex99/update/main/update_file/menu-ssh" && chmod +x /usr/bin/menu-ssh
wget -qc -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/godtrex99/update/main/update_file/menu-trojan" && chmod +x /usr/bin/menu-trojan
wget -qc -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/godtrex99/update/main/update_file/menu-vmess" && chmod +x /usr/bin/menu-vmess
wget -qc -o /opt/.ver https:https://raw.githubusercontent.com/godtrex99/update/main/ver && chmod +x /opt/.ver
echo -e " [INFO] Update Successfully"

rm install_up.sh
sleep 2
exit
