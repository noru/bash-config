alias d='docker'
alias db='docker build'
alias dr='docker run -itd'
alias da='docker attach'
alias dp='docker ps'

alias g='git'
alias gpl='git pull --rebase'
alias gp='git push'
alias gb='git branch'
alias gs='git status'
alias gst='git stash'
alias gsp='git stash pop'
alias gc='git checkout'
alias gl='git log'
alias gr='git remote'
alias gf='git fetch'

alias sb='source ~/.bash_profile'
alias ll="ls -lhA"
alias ..="cd .."
alias ls="ls -CF"
alias hisg="history | grep"
alias fhere="find . -name "
alias mkdir="mkdir -pv"
alias ps="ps aux | grep -v grep | grep -i -e VSZ -e"

psp() {
  lsof -i :"$1"
}

set_lantern_proxy() {
  export HTTP_PROXY='http://127.0.0.1:54189'
  export HTTPS_PROXY='http://127.0.0.1:54189'
  export http_proxy='http://127.0.0.1:54189'
  export https_proxy='http://127.0.0.1:54189'
  echo '🚀 Set lantern as http proxy'
}

set_ss_proxy() {
  export HTTP_PROXY='http://127.0.0.1:1087'
  export HTTPS_PROXY='http://127.0.0.1:1087'
  export http_proxy='http://127.0.0.1:1087'
  export https_proxy='http://127.0.0.1:1087'
  echo '🚀 Set shadowsockets as http proxy'
}

unset_proxy() {
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset http_proxy
  unset https_proxy
  echo '🙅‍ HTTP proxy env cleared'
}

alias pxy='set_lantern_proxy'
alias pxyss='set_ss_proxy'
alias rmp='unset_proxy'

eval "$(jump shell bash)"

export CLICOLOR=1
export TERM=xterm-256color

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\(.*\)/🚩\1/'
}

export PS1="\n\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] 📂 \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \033[38;5;226m\]\$(parse_git_branch)\n💲 "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias sshdo='ssh -i ~/.ssh/digital_ocean root@138.197.208.75'
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

export PATH="$HOME/.cargo/bin:$PATH"
