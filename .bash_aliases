
alias school='ssh y637chen@linux.student.cs.uwaterloo.ca'

# ls
alias ll='ls -l'
alias la='ls -A'
alias l='ls'

# grep

# recursive grep in file
alias fgrep='grep -HrnIi'

alias grep='grep --color=auto'
export GREP_COLOR='1;37;41'

# git
alias bb='git branch | grep -e "^*" | cut  -d" " -f 2'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias gco='git checkout '
alias gs='git status '
alias gb='git branch '
alias gd='git diff'
alias gds='git diff --cached'
alias gcom='git commit'
alias ga='git add '
alias gst='git stash '
alias gsh='git show'
alias gcl='git clean -f'
alias gpb='git push origin `bb`'

export EDITOR='/usr/bin/vim'
export TF_CPP_MIN_LOG_LEVEL=2
