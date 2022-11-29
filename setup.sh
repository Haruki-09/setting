/usr/bin/bash

dates=$(date '+%Y-%m-%d_%H:%M')
setting_path=~/setting

if [[ -d ~/.tmux ]]; then
	mv ~/.tmux ~/.tmux_${dates}
fi

if [[ -d ~/.vim ]]; then
	mv ~/.vim ~/.vim_${dates}
fi

if [[ -f ~/.zshrc ]]; then
	mv ~/.zshrc ~/.zshrc_${dates}
fi

if [[ -f ~/.bashrc ]]; then
	mv ~/.bashrc ~/.bashrc_${dates}
if

if [[ -f ~/.tmux.conf ]]; then
	mv ~/.tmux.conf ~/.tmux.conf_${dates}
fi

if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc ~/.vimrc_${dates}
fi

ln -s ${setting_path}/tmux ~/.tmux
ln -s ${setting_path}/vim ~/.vim
ln -s ${setting_path}/zshrc ~/.zshrc
ln -s ${setting_path}/bashrc ~/.bashrc
ln -s ${setting_path}/tmux.conf ~/.tmux.conf
ln -s ${setting_path}/vimrc ~/.vimrc
