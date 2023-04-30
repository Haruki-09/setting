#docker start(WSL2)
#sudo service docker status >/dev/null 2>&1
#if (( $? != 0)); then
#	sudo service docker start 1>/dev/null
#fi

#oh-my-posh
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/setting/sonicboom_light.omp.json)"

#NORMAL SETTING
setopt print_exit_value

#spell error fix
setopt correct

#completion
autoload -Uz compinit && compinit

# $cd -[num]
# dirs -v
setopt autopushd
setopt pushdignoredups
setopt pushdsilent
DIRSTACKSIZE=30

#cd (only dir name)
setopt auto_cd

# alias
alias ls='ls -1F --color=auto'
alias sl='ls -1F --color=auto'
alias la='ls -1a --color=auto'
alias ll='ls -la --color=auto'
alias date='date +%Y-%m-%d_%H:%M'
alias taropen='tar -zxvf'
alias tarcomp='tar -zcvf'

# git tab completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/setting/git-completion.bash


# PROMPT SETTING

# Base16 Shell
BASE16_SHELL="$HOME/setting/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"
base16_horizon-terminal-dark

# git branch show
source ~/setting/git-prompt.sh
#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true

#prompt
setopt PROMPT_SUBST ; PS1='%F{039}[%n@%M]%f %F{045}$(__git_ps1 "(%s) ")%f%F{043}[%~]%f
\$ '
