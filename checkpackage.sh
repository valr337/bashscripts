#!/bin/sh
cd ~/Downloads
# Print packages installed from different origins.
# Exclude standard Ubuntu repositories.

grep -H '^Origin:' /var/lib/apt/lists/*Release | grep -v ' Ubuntu$' | sort -u \
| while read -r line; do

    list=${line%%:*}

    sed -rn 's/^Package: (.*)$/\1/p' ${list%_*Release}*Packages | sort -u \
    | xargs -r dpkg -l 2>/dev/null | grep -e '^.i ' | awk '{ print $2 }' >> test.txt

 done