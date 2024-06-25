#! /bin/bash
echo "NEEDed packages: "
echo -e "'neofetch' 'fish' 'conky'"
while true; do
    read -p "Install? y/n " yn
    case $yn in
        [Yy]* ) sudo apt install neofetech fish conky; echo "proceeding"; break;;
        [Nn]* ) echo "proceeding"; break;;
   esac
done
sleep 2s
echo 'copying directories' 
cp -r .config $HOME
cp walp.png $HOME/Downloads
sudo  mkdir /etc/conky && sudo cp conky.conf /etc/conky/ 
