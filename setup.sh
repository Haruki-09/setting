#!/usr/bin/bash

setting_path=$PWD
dates=$(date '+%Y-%m-%d_%H:%M')
setting_files=(zshrc bashrc vimrc tmux.conf)
setting_dirs=(vim tmux)

for setting_file in ${setting_files[@]}; do

	if [[ -f ~/.${setting_file} ]]; then

		if [[ -L ~/.${setting_file} ]]; then
			rm -i ~/.${setting_file}
		else
			mv ~/.${setting_file} ~/.${setting_file}_${dates}
		fi
	fi

	ln -s ${setting_path}/${setting_file} ~/.${setting_file}
	
done

for setting_dir in ${setting_dirs[@]}; do
	
	if [[ -d ~/.${setting_dir} ]]; then

		if [[ -L ~/.${setting_dir} ]]; then
			rm -i ~/.${setting_dir}
		else
			mv ~/.${setting_dir} ~/.${setting_dir}_${dates}		
		fi
	fi

	ln -s ${setting_path}/${setting_dir} ~/.${setting_dir}

done
