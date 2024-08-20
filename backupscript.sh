#!/bin/bash
\apt list --installed | cut -d'/' -f1 | tail -n +2 > a.txt
#touch packages.list

cd ~/Downloads || exit

# Print packages installed from different origins.
# Exclude standard Ubuntu repositories.
touch b.txt
grep -H '^Origin:' /var/lib/apt/lists/*Release | grep -v ' Ubuntu$' | sort -u \
| while read -r line; do

    list=${line%%:*}

    sed -rn 's/^Package: (.*)$/\1/p' ${list%_*Release}*Packages | sort -u \
    | xargs -r dpkg -l 2>/dev/null | grep -e '^.i ' | awk '{ print $2 }' >> test.txt

 done

comm -234 a.txt b.txt removelist.txt > packages.list

#chezmoi
pkill -9 freetube

chezmoi apply -y

#backup files
pkill -9 thorium

backupdir="/media/HDD6TB/Backups/rsyncbackup"

startbackup(){
    rsync -avzP /home/yx/Downloads $backupdir &
    rsync -avzP /home/yx/Documents $backupdir &
    rsync -avzP /home/yx/Desktop $backupdir &
    rsync -avzP /home/yx/Pictures $backupdir &
    rsync -avzP /home/yx/AppImages $backupdir &
    rsync -avzP /home/yx/Applications $backupdir &
    rsync -avzP /home/yx/gpt4all $backupdir &
    rsync -avzP /home/yx/Telegram $backupdir &
    rsync -avzP /home/yx/Projects $backupdir &
    rsync -avzP /home/yx/.oh-my-zsh $backupdir &
    rsync -avzP /home/yx/.floorp $backupdir &
    rsync -avzP /home/yx/.wine $backupdir &
    rsync -avzP /home/yx/.config/thorium $backupdir &
    rsync -avzP /home/yx/.docker $backupdir &
    rsync -avzP /home/yx/.logseq $backupdir &
    rsync -avzP /home/yx/SyncthingShares $backupdir &
    wait
}


