setopt auto_cd

autoload -U compinit; compinit

PATH="$PATH:/home/fang/bin"

# alias
alias la='ls -a'
alias ll='ls -la'
alias ls='ls -1tF'
alias vi='vim'
alias date='date +%Y-%m-%d_%H:%M'
alias taropen='tar -zxvf'
alias tarcomp='tar -zcvf'
# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"
        
base16_nova

# prompt
PROMPT='[%B%F{blue}%n@%m%f%b]
%F{green}[%~]%f %F{white}$%f '

RPROMPT='%F{cyan}$vcs_info_msg_0_%f'
