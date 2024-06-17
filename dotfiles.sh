#! /bin/bash
echo "NEEDed packages: "
echo -e "'fish' 'conky' 'xfce4'"
while true; do
    read -p "Install? y/n " yn
    case $yn in
        [Yy]* ) sudo apt install fish conky xfce4 xfce4-goodies; echo "proceeding"; break;;
        [Nn]* ) echo "proceeding"; break;;
   esac
done
sleep 2s
echo 'copying directories' 
cp -r .config $HOME
cp walp.png $HOME/Downloads
sudo  mkdir /etc/conky && sudo cp conky.conf /etc/conky/ 
echo -e "done.\n[signing out.]\n\n\nexit using CTRL + C\n"
xfce4-panel -r && xfwm4 --replace 
