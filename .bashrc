# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -al'
alias lt='ls -artl'
alias tree='tree -N'

LS_COLORS='rs=0:di=01;33:ln=38;5;51:mh=44;38;5;15:pi=40;38;5;11:so=38;5;13:do=38;5;5:bd=48;5;232;38;5;11:cd=48;5;232;38;5;3:or=48;5;232;38;5;9:mi=05;48;5;232;38;5;15:su=48;5;196;38;5;15:sg=48;5;11;38;5;16:ca=48;5;196;38;5;226:tw=48;5;10;38;5;16:ow=48;5;10;38;5;21:st=48;5;21;38;5;15:ex=38;5;34:*.tar=38;5;9:*.tgz=38;5;9:*.arj=38;5;9:*.taz=38;5;9:*.lzh=38;5;9:*.lzma=38;5;9:*.tlz=38;5;9:*.txz=38;5;9:*.zip=38;5;9:*.z=38;5;9:*.Z=38;5;9:*.dz=38;5;9:*.gz=38;5;9:*.lz=38;5;9:*.xz=38;5;9:*.bz2=38;5;9:*.tbz=38;5;9:*.tbz2=38;5;9:*.bz=38;5;9:*.tz=38;5;9:*.deb=38;5;9:*.rpm=38;5;9:*.jar=38;5;9:*.rar=38;5;9:*.ace=38;5;9:*.zoo=38;5;9:*.cpio=38;5;9:*.7z=38;5;9:*.rz=38;5;9:*.jpg=38;5;13:*.jpeg=38;5;13:*.gif=38;5;13:*.bmp=38;5;13:*.pbm=38;5;13:*.pgm=38;5;13:*.ppm=38;5;13:*.tga=38;5;13:*.xbm=38;5;13:*.xpm=38;5;13:*.tif=38;5;13:*.tiff=38;5;13:*.png=38;5;13:*.svg=38;5;13:*.svgz=38;5;13:*.mng=38;5;13:*.pcx=38;5;13:*.mov=38;5;13:*.mpg=38;5;13:*.mpeg=38;5;13:*.m2v=38;5;13:*.mkv=38;5;13:*.ogm=38;5;13:*.mp4=38;5;13:*.m4v=38;5;13:*.mp4v=38;5;13:*.vob=38;5;13:*.qt=38;5;13:*.nuv=38;5;13:*.wmv=38;5;13:*.asf=38;5;13:*.rm=38;5;13:*.rmvb=38;5;13:*.flc=38;5;13:*.avi=38;5;13:*.fli=38;5;13:*.flv=38;5;13:*.gl=38;5;13:*.dl=38;5;13:*.xcf=38;5;13:*.xwd=38;5;13:*.yuv=38;5;13:*.cgm=38;5;13:*.emf=38;5;13:*.axv=38;5;13:*.anx=38;5;13:*.ogv=38;5;13:*.ogx=38;5;13:*.aac=38;5;45:*.au=38;5;45:*.flac=38;5;45:*.mid=38;5;45:*.midi=38;5;45:*.mka=38;5;45:*.mp3=38;5;45:*.mpc=38;5;45:*.ogg=38;5;45:*.ra=38;5;45:*.wav=38;5;45:*.axa=38;5;45:*.oga=38;5;45:*.spx=38;5;45:*.xspf=38;5;45:'
export LS_COLORS

set -o vi
export TERM=xterm-256color
export LANG=ko_KR.UTF-8
export EDITOR=vim
alias vi='vim'

source ~/.git-completion.sh
source ~/.git-prompt.sh

# text color list
__PS_COLOR=36
__PROMPT_FUNC() {
    local _ERRVAL=$?; local _PWD=${PWD/$HOME/~}; local _BASE=${_PWD##*/}
    PS1="\[\e[1;${__PS_COLOR}m\]\u\[\e[0;${__PS_COLOR}m\]@\h\[\e[1;30;40m\]:"
    PS1="${PS1}\[\e[0;37m\]${_PWD%$_BASE}\[\e[1;37m\]${_BASE}"
    if test $_ERRVAL -eq 0; then
        PS1="${PS1}\[\e[32m\]\\$\$(__git_ps1) \[\e[0m\]"
    else
        PS1="${PS1}\[\e[31m\]\\$\$(__git_ps1) [${_ERRVAL}] \[\e[0m\]"
    fi
	echo -ne "\e]0;${USER}@${HOSTNAME}: ${_PWD}\007"
}
PROMPT_COMMAND=__PROMPT_FUNC
export PS1

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/project
source /usr/bin/virtualenvwrapper.sh
