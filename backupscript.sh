#!/bin/bash

echo "starting backup..."

if [ -d "$HOME/Downloads/.tmp" ]; then
    rm -r "$HOME/Downloads/.tmp"
fi
mkdir "$HOME/Downloads/.tmp" 
cd "$HOME/Downloads/.tmp" || exit

#backup packages excluding ones not in ubuntu repo
\apt list --installed | cut -d'/' -f1 | tail -n +2 > a.txt

# Print packages installed from different origins.
# Exclude standard Ubuntu repositories.
touch b.txt
grep -H '^Origin:' /var/lib/apt/lists/*Release | grep -v ' Ubuntu$' | sort -u \
| while read -r line; do

    list=${line%%:*}

    sed -rn 's/^Package: (.*)$/\1/p' ${list%_*Release}*Packages | sort -u \
    | xargs -r dpkg -l 2>/dev/null | grep -e '^.i ' | awk '{ print $2 }' >> b.txt

 done

#append removelist to diff
cat ~/Documents/bashscripts/remove.list >> b.txt

#remove duplicates
sort a.txt | uniq > c.txt

#subtract all unwanted packages 
grep -Fxvf b.txt c.txt > packages.list

#cleanup
rm -r *.txt

#kill programs that interfere with backup
pkill -9 freetube
pkill -9 thorium

#chezmoi dot files
chezmoi apply -y

#backup files desktop
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

echo "backup done"


