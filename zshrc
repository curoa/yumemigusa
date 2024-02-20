export PATH=$PATH:$HOME/.local/bin

# Lines configured by zsh-newuser-install
setopt share_history
setopt hist_ignore_dups
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
bindkey "^R" history-incremental-search-backward

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/blackcat/.zshrc'
zstyle ':completion:*' list-colors ${LS_COLORS}
zstyle ':completion:*' menu select interactive
setopt menu_complete

autoload -Uz compinit
#fpath+=~/.zfunc
fpath+=~/.zsh/completion
compinit
# End of lines added by compinstall, but I edit it


# my setting

setopt +o nomatch # aboid "no match found"
setopt print_eight_bit # show japanese characters
setopt numeric_glob_sort
unsetopt menu_complete


vim_flg=`ps | grep vim | wc -l`
if [ ${vim_flg} -eq 0 ]; then
	export PROMPT=$'%{\e[38;5;45m%}[%n %c]%{\e[m%}'
else
	export PROMPT=$'%{\e[38;5;48m%}[vim %c]%{\e[m%}'
fi
#random_background

#alias vim='vim -p'
alias vim='nvim -p'
alias view='nvim -R -p'
#eval $(dircolors ./colors)
LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS
alias ls='ls --color'
alias ll='ls -l'
alias lp='ls --color=never'
alias la='ls -a'
alias llt='ls -tl'
alias mv='mv -b --suffix=_$(date +%Y%m%d).bk'
alias cp='cp -b --suffix=_$(date +%Y%m%d).bk'
alias grep="grep --color=auto"
alias grepy="grep --color=auto -rn --include='*.py' . -e"
alias pgrep="grep --color=never"
alias vimgrep="grep -n --color=never"
alias less="less -SR" # S : chop long lines, R : color
alias updatedb="sudo updatedb --prunepaths=/mnt"


alias diff="colordiff"
alias make="make -j"
less_with_unbuffer () {
	unbuffer "$@" |& less -SR
}
alias ul=less_with_unbuffer
alias rmtmp='/bin/rm --interactive=never -fr ~/tmp/* ~/tmp/.[^.]*'
alias lstmp='ls ~/tmp/'
alias rmpost='/bin/rm --interactive=never -fr ~/post/* ~/post/.[^.]*'
alias tmpnote='vim ~/tmp/note'
alias cool='vim ~/work/dream/memos/cool'

alias ez^="vim ~/.zshrc"
alias rz^="source ~/.zshrc"
alias by="exit"
alias cdu="cd .."
alias cv=". cv"
alias fo="./exec.sh"
alias ho="chmod 755 exec.sh"
alias vo="vim exec.sh"
alias showsvg="google-chrome"

alias xp="xsel -b"
alias xy="xsel -bi"
alias lx="loadxkb"

alias py="python"

alias evi="evince"
#alias open="eog"
alias ulimitcoredump="ulimit -c unlimited"
alias thunderbird="thunderbird &"
#alias mendeley="sudo ~/.mendeleydesktop/bin/mendeleydesktop &"
alias mendeley="~/.mendeleydesktop/bin/mendeleydesktop &"
alias note="vim note"
alias n="vim ~/note"
alias notetmp='vim ~/note'
alias dt="sudo hwclock --hctosys; date '+%Y%m%d'"
alias today="vim \`dt\`.txt"
alias karen="vim ~/karen.note"
alias cdf=". cdf"
#complete -W "`ls ~/.local/bin/cv_data/`" cv
#complete -W "c++ project procon pdflatex beamer python" four
#complete -F _minimal google-chrome
source ~/.zsh/completion/mycmd.zsh

# git
alias st="git status"
alias co="git checkout"
alias br="git branch"
alias dff="git diff"
alias sdf="git diff --staged"
alias add="git add"
alias com="git commit"
alias acom="git commit -a"
alias comend="git commit --amend"
alias acomend="git commit -a --amend"
alias comc="git commit -c HEAD"
alias acomc="git commit -a -c HEAD"
alias btmp="git reset HEAD^"
alias lg="git lg"

alias lo="libreoffice7.6"

# http://zsh.sourceforge.net/Doc/Release/Completion-System.html#Completion-System
# setopt no_flow_control # what's this?

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
