# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
<<<<<<< HEAD
case $- in
    *i*) ;;
      *) return;;
esac
=======
[ -z "$PS1" ] && return
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
<<<<<<< HEAD
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
=======
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
<<<<<<< HEAD
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    PS1='\$ '

else
    #PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    PS1='\$ '
=======
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
<<<<<<< HEAD
    alias ls='ls --color=auto'
=======
    #alias ls='ls --color=auto'
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
<<<<<<< HEAD
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# stuff I added

PATH=$PATH:/home/jesse/Android/Sdk/platform-tools/

EDITOR=vi
VISUAL=vi

alias rhea='ssh folde01@rhea.dcs.bbk.ac.uk'
alias mvb='mv $HOME/Downloads/[* $HOME/0books'
alias stu='$HOME/0apps/android-studio/bin/studio.sh'

VIM_ROOT=/home/jesse/.vim-configs

alias ij="/home/jesse/0apps/0intellij/idea-IU-143.1184.17/bin/idea.sh &"

# for wireshark crash on startup or opening a file or following a tcp stream:
# http://www.bictor.com/2014/06/05/wireshark-crashes-in-ubuntu-14-04/

export LIBOVERLAY_SCROLLBAR=0
=======
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

export EDITOR=vim
alias cj='cd ~/Desktop/0pij/git'
alias cp='cd ~/Python'
alias ce='cd ~/Desktop/0pij/0eckel/exercises'
alias vv='vim ~/.vimrc && . ~/.bashrc' 
alias vb='vim ~/.bashrc && . ~/.bashrc'
alias sa='source ~/.bashrc ; source ~/.vimrc'

export PATH=$PATH:~/bin

export CLASSPATH=.:/opt/lib/junit-4.11.jar:/opt/lib/hamcrest-core-1.3.jar:/home/jesse/Desktop/0pij/0eckel/tij_src

#alias test="rm *.class; javac -cp .:/opt/lib/junit-4.11.jar:/opt/lib/hamcrest-core-1.3.jar ContactManagerTests.java && java -cp .:/opt/lib/junit-4.11.jar:/opt/lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore ContactManagerTests"

function jt() {
  rm *.class
  javac -cp $CLASSPATH ${1}.java && \
  java -cp $CLASSPATH org.junit.runner.JUnitCore $1 
}
export -f jt
>>>>>>> 764b7270d16613c3a4626715ab89bcc3e23a9f95
