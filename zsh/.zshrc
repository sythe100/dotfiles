# Path to your oh-my-zsh configuration.
ZSH=/home/aaron/git_repos/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster" 
#ZSH_THEME="miloshadzic"

# Aliases
alias cp='acp -g'
alias e="exit"
alias x="startx"
alias ll='ls -lh'
alias la='ls -a'
alias df='df -h'
alias mv='amv -g'
alias rm='rm -I'
alias exco='echo'
alias shutdown='systemctl poweroff'
alias reboot='systemctl reboot'
alias prop='/home/aaron/scripts/xprop.sh'
alias cdf_sh='/home/aaron/scripts/cdf.sh'
alias home='cd /home/aaron'
alias transmission='transmission-gtk'
alias shred='shred -u'
alias booterror='sudo journalctl -b -rp3'
alias ls='ls --group-directories-first --color=tty'
alias svim='sudo PYTHONPATH=/usr/lib/python3.5/site-packages vim'
alias ev='vim ~/Dotfiles/vim/.vimrc'
alias ez='vim ~/Dotfiles/zsh/.zshrc'
alias lfs='. ./scripts/lfs.zsh'
#alias python='python2.7'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(archlinux colored-man colorize cp git git-extras gitfast github gpg-agent python \
    systemd tmux )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
PATH=$PATH:$HOME/bin:$HOME/scripts
DEFAULT_USER="aaron"
bindkey -v # sets the commandline to use  vi keybinds vice emacs.

# Environment Variables
export EDITOR="vim"
export PYTHONPATH=/usr/lib/python3.5/site-packages
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
#source /usr/share/doc/pkgfile/command-not-found.zsh
