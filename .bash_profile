export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/git/bin:$PATH"
ulimit -n 1024
HISTCONTROL=ignoreboth
color_branch() {
  if [[ -n "$(git status --porcelain 2> /dev/null)" ]]; 
  then
    echo -e '\033[00;31m'
  else
    echo -e '\033[00;32m'
  fi
}
get_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\033[01;32m\]\u@\h\[\033[00;34m\] \w $(color_branch)$(get_git_branch) \[\033[01;34m\]\n\$\[\033[00m\] '

# use vi commands
set -o vi

alias ls='ls -AGp'
alias vi='vim'
