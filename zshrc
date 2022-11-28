#NORMAL SETTING

#spell error fix
setopt correct

#completion
autoload -Uz compinit && compinit

# $cd -[num]
setopt autopushd
setopt pushdignoredups
setopt pushdsilent
DIRSTACKSIZE=30
#cd (only dir name)
setopt auto_cd

PATH="$PATH:/home/fang/bin"

# alias
alias ls='ls -CtF --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -la --color=auto'
alias vi='vim'
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
base16_atelier-lakeside

# git branch show
source ~/setting/git-prompt.sh
#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PS1_SHOWUNTRACKEDFILES=true

#prompt
setopt PROMPT_SUBST ; PS1='[%n@%m] %F{blue}$(__git_ps1 "(%s) ")%f
%F{cyan}[%~]%f \$ '
