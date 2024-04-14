#!/bin/bash
#printf '%s\n' "${my_array[@]}"
#getZipInfo=($( 7z l -ba Archive.7z | awk '/2024/{gsub("\.", "", $3); print $3}'))

# function extract() {
# 	cmd="7z x "${$1}
# 	echo $cmd
	
# }

cd "$HOME/Downloads/test/testcmd" || exit
#tree -L 1
pwd

commonpasswords=("cs.rin.ru" "hello")
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
#echo "${x}"

set -o noglob         # See special Note, below.
IFS=$'\n' filesarr=($x)
set +o noglob         # See special Note, below.

#IFS=$'\n' read -r -a filesarr <<< "$x"
#echo "array count: ${#filesarr[@]}"

#printf '%s\n' "${filesarr[@]}"

tmp=".tmp"
#make dir if it does not exist
if [ ! -d "$tmp" ]; then
	mkdir $tmp
fi

#echo "${filesarr[@]}"

for ((i = 0 ; i < ${#filesarr[@]} ; i++));do
	path=${tmp}
	conend=false
	echo "$i: ${filesarr[i]}"

	#error checking
	x="$(7z -bso0 -bsp0 -p t "${filesarr[i]}" 2>&1)"
	y="$?"
	echo "error code $y"

	if [ "$y" == 0 ]; then
		#echo "ok"
		#OK to extract, no archive error or password
		7z -bso0 -y x  "${filesarr[i]}" -o${tmp}

	elif [ "$y" == 2 ]; then
		echo "$x"
		if [[ "$x" =~ "Wrong password?" ]]; then
			#password protected
			for ((j = 0; j < ${#commonpasswords[@]} ; j++)); do
				#echo "j: ${commonpasswords[j]}"
				if [ "$(7z -bso0 -p"${commonpasswords[j]}" t "${filesarr[i]}")" ]; then
					7z -bso0 -y -p"${commonpasswords[j]}" x "${filesarr[i]}" -o${tmp}	
					#echo ${tmp}/*
				fi
			done
		else
			echo "Corrupted Archive, skipping"
			continue
		fi
	else
		echo "rare error: $?"
		continue
	fi

	#archive extracted

	#first basic check for common zip archives
	#repeat until theres no more directories
	#echo "path ${tmp}"
	while [ $conend = false ]
	do
		if [ "$(find ${path} -maxdepth 1 -type d -printf 1 | wc -m)" -eq 2 \
			-a "$(find ${path} -maxdepth 1 ! -type d -printf 1 | wc -m)" -eq 0 ]; then
			path+="/*"
			#echo path ${path}
			# It has only one subdirectory and no other content
		else
			#echo ${path}
			conend=true
			#echo "X"
		fi		
	done
	#echo "after" ${path}
	#passed all empty dirs
	#keep record of original zip name in text file

	#check whether zip is a steam game
	
	foldercontents=(${path}/*)
	#echo "foldercontents: " "${foldercontents[@]}"

	# if [[ " ${array[*]} " =~ [[:space:]]${value}[[:space:]] ]]; then
    # # whatever you want to do when array contains value
	# fi

	if [[ "${foldercontents[*]}" =~ "depotcache" ]] && [[ "${foldercontents[*]}" =~ "steamapps" ]]; then

		#its a steam game archive
		steampath=${path}
		steampath+="/steamapps/common/"
		for f in ${steampath}/*; do
#			echo $f
			if [ "$f" != "Steamworks Shared" ]; then
				steampath=${f}
			fi
		done
		#echo ${steampath}
	fi
	
	#echo ${path}



	if [ $path == $tmp ]; then
		#if path is empty that means that folder is already pruned
		#echo "path empty"
		#echo "${filesarr[i]}"
		fname="${filesarr[i]:2}" #remove ./
		fname="${fname%.*}" #remove extension
		#echo "${fname}"
		if [ ! -d "output/${fname}" ]; then
			mkdir "output/${fname}"
			mv "${tmp}"/* "output/${fname}"
		else
			echo "output/${fname} exists"
		fi

	else	
		if [ "$steampath" != "" ]; then
			path=$steampath
			steampath=""
		fi 	

		tmpsize=${#tmp}
		fpath=output/${path:tmpsize}
		echo $fpath
		if [ ! -d "${fpath}" ]; then
			mv ${fpath} "$HOME/Downloads/test/testcmd/output"
		else
			echo ${fpath} "exists"
		fi
	fi

	#clear tmp dir
	rm -rf ${tmp}/*


	#still have to check for errors

done

#exec $cmd
#dirfiles=`ls`



