#!/bin/bash
#printf '%s\n' "${my_array[@]}"
#getZipInfo=($( 7z l -ba Archive.7z | awk '/2024/{gsub("\.", "", $3); print $3}'))

# function extract() {
# 	cmd="7z x "${$1}
# 	echo $cmd
	
# }

cd "$HOME/Downloads/testcmd" || exit
#pwd

commonpasswords=("cs.rin.ru" )
ziptypes="zip,rar,7z,gzip,tar.gz,tgz,tar.bz2,tbz,tar.xz,txz,cbr"
#ziptypes="zip,rar,7z"
IFS=',' read -r -a ziparr <<< "$ziptypes"
#check arr contents
cmd="find . -type f \( "
for ((i = 0 ; i < ${#ziparr[@]} ; i++)); do
        cmd+="-iname \*.${ziparr[i]} -o "
done

cmd=${cmd::-4}
cmd+=" \)"
#echo $cmd
#exec $cmd
#cmd="find \. -type f \( -iname \*.zip -o -iname \*.rar \)"
x=$(eval "$cmd")
IFS=',' read -r -a filesarr <<< "$x"

#printf '%s\n' "${filesarr[@]}"

tmp=".tmp"
#make dir if it does not exist
if [ ! -d "$tmp" ]; then
	mkdir $tmp
	echo "$DIRECTORY does not exist."
fi

for ((i = 0 ; i < ${#filesarr[@]} ; i++));do
	path=${tmp}
	conend=false
	echo "${filesarr[i]}"
	7z x -y "${filesarr[i]}" -o${tmp} > nul
	#still have to check for errors when extracting archive

	#first basic check for common zip archives
	#repeat until theres no more directories
	echo "path ${tmp}"
	while [ $conend = false ]
	do
		#echo "next: ${path}"/*
		#why /* instead of / ? check +1 so we dont need to get curr dir when we want to use mv
		if [ "$(find ${path} -maxdepth 1 -type d -printf 1 | wc -m)" -eq 2 \
			-a "$(find ${path} -maxdepth 1 ! -type d -printf 1 | wc -m)" -eq 0 ]; then
			path+="/*"
			echo path ${path}
		# It has only one subdirectory and no other content
		else
			conend=true
			echo "X"
		fi		
	done
	echo "after" ${path}
	#passed all empty dirs
	#keep record of original zip name in text file

	#check whether zip is a steam game
	foldercontents=${path}/*
	echo "foldercontents: " $foldercontents

	if [ "${foldercontents}" == "depotcache" ] && [ "${foldercontents}" == "steamapps" ]; then

		#its a steam game archive
		steampath="${path}/steamapps/common/"
		for f in ${steampath}; do
			echo f
			if [ "$f" != "Steamworks Shared" ]; then
				steampath+="/${f}"
			fi
		done
	fi

	if [ $path == $tmp ]; then
		#if path is empty that means that folder is already pruned
		echo "path empty"
		echo "${filesarr[i]}"
		mkdir "${filesarr[i]%.*}"
		mv "${tmp}"/* "${filesarr[i]%.*}"
	else	
		if [ "$steampath" != "" ]; then
			path=$steampath
			steampath=""
		fi 	
		mv ${path} "$HOME/Downloads/testcmd"
	fi

	#clear tmp dir
	rm -rf "{$tmp}/*"


	#still have to check for errors

done

#exec $cmd
#dirfiles=`ls`



