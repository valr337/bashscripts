#!/bin/bash
cd ~/Downloads

dl_removesnap_script(){
    wget https://gitlab.com/scripts94/kubuntu-get-rid-of-snap/-/blob/main/Kubuntu_get_rid_of_Snap.sh
}
dl_removesnap_script & wait

chmod +x ./*.sh
./*.sh
rm *.sh

#check if not installed, if not then install
cat packages.list | while read line || [[ -n $line ]];
do
    echo $line
    if [ $(dpkg-query -W -f='${Status}' $line 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        apt-get install $line;
    fi    
   # do something with $line here
done

#download github-only packages
githubdownload(){
    #install vscodium
    curl -s https://api.github.com/repos/VSCodium/vscodium/releases | grep browser_download_url | grep 'amd64.deb"$' | head -n 1 | cut -d '"' -f 4

    #install chezmoi
    curl -s https://api.github.com/repos/twpayne/chezmoi/releases | grep browser_download_url | grep 'amd64.deb"$' | head -n 1 | cut -d '"' -f 4

    #install appimagelauncher
    curl -s https://api.github.com/repos/TheAssassin/AppImageLauncher/releases | grep browser_download_url | grep 'bionic_amd64.deb"$' | head -n 1 | cut -d '"' -f 4

    #install freetube
    curl -s https://api.github.com/repos/FreeTubeApp/FreeTube/releases | grep browser_download_url | grep '64[.]deb' | head -n 1 | cut -d '"' -f 4 

    #install gcm
    curl -s https://api.github.com/repos/git-ecosystem/git-credential-manager/releases | grep browser_download_url | grep 'gcm-linux_amd64[.]deb' | head -n 1 | cut -d '"' -f 4

    #install lact
    curl -s https://api.github.com/repos/ilya-zlobintsev/LACT/releases | grep browser_download_url | grep '.ubuntu-2404.deb"$' | head -n 1 | cut -d '"' -f 4 

    #install onlykey
    curl -s https://api.github.com/repos/trustcrypto/OnlyKey-App/releases | grep browser_download_url | grep '_amd64.deb"$' | head -n 1 | cut -d '"' -f 4

    #peazip
    curl -s https://api.github.com/repos/peazip/PeaZip/releases | grep browser_download_url | grep 'Qt5-1_amd64.deb"$' | head -n 1 | cut -d '"' -f 4

    #install protonvpn
    wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb

    #install thorium
    curl -s https://api.github.com/repos/Alex313031/Thorium/releases | grep browser_download_url | grep '_AVX.deb"$' | head -n 1 | cut -d '"' -f 4 

    #install webcord
    curl -s https://api.github.com/repos/SpacingBat3/WebCord/releases | grep browser_download_url | grep '_amd64.deb"$' | head -n 1 | cut -d '"' -f 4

}

#install docker
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#setup onlykey
wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules
sudo cp 49-onlykey.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && sudo udevadm trigger

#install fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch

#install floorp
curl -fsSL https://ppa.floorp.app/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
sudo curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list https://ppa.floorp.app/Floorp.list

#install librewolf
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: 
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update
sudo apt-get librewolf floorp fastfetch install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

