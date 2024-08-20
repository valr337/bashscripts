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
while read line || [[ -n $line ]];
do
    echo $line
    if [ $(dpkg-query -W -f='${Status}' $line 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        apt-get install $line;
    fi    
   # do something with $line here
done < packages.list

ghlinks=(
    #owner/repo:greparg
    'VSCodium/vscodium/:amd64.deb"$'
    'twpayne/chezmoi:amd64.deb"$'
    'TheAssassin/AppImageLauncher:bionic_amd64.deb"$'
    'FreeTubeApp/FreeTube\:64\[\.\]deb'
    'git-ecosystem/git-credential-manager:gcm-linux_amd64[.]deb'
    'ilya-zlobintsev/LACT:.ubuntu-2404.deb"$'
    'trustcrypto/OnlyKey-App:_amd64.deb"$'
    'peazip/PeaZip:Qt5-1_amd64.deb"$'
    'Alex313031/Thorium:_AVX.deb"$'
    'SpacingBat3/WebCord:_amd64.deb"$'
)

#download github-only packages
githubdownload(){
    for link in ${#ghlinks[@]}
        do
        read -r owner greparg < <(awk -F ':' '{print $1,$2}' <<< "$link")

        #read api and get latest deb package
        link=$(curl -s https://api.github.com/repos/"${owner}"/releases | grep browser_download_url | grep "${greparg}" | head -n 1 | cut -d '"' -f 4)

        wget "${link}"

        #curl -s https://api.github.com/repos/VSCodium/vscodium/releases | grep browser_download_url | grep 'amd64.deb"$' | head -n 1 | cut -d '"' -f 4
        
        #install protonvpn
        #wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.4_all.deb
    done

    link=$(curl https://repo.protonvpn.com/debian/dists/stable/main/binary-all/ | grep "proton-vpn-gtk-app" | tail -1 | cut -d'"' -f2)
    wget "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/$link"
}

githubdownload & wait

for debp in ./*.deb
    do 
    echo "$debp"
    #sudo apt-get install "$debp"
done

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

