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

