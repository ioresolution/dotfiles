#! /bin/bash
echo "NEEDed packages: "
echo -e "'fish' 'conky' 'xfce4' 'wal'"
while true; do
    read -p "Install? y/n " yn
    case $yn in
        [Yy]* ) sudo apt install fish conky xfce4 xfce4-goodies python3 python3-pip;  pip install pywal --break-system-packages; break;;
        [Nn]* ) echo "proceeding"; sleep 2s; break;;
   esac
done
echo 'copying directories' 
cp -r .config $HOME
cp walp.png $HOME
sudo  mkdir /etc/conky && sudo cp conky.conf /etc/conky/ 
echo -e "done.\n\n\n[signing out.]\n\n\nexit using CTRL + C\n\n"
xfce4-panel -r; xfwm4 --replace 
