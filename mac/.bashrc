# FOR mac local bash settings. nagamoto
# 2013/11/15

#PS1="\[\033[31m\] AAA \[\033[0m\]"
#PS1='\[\033[32m[\w]\n\[\033[32m\u@\h$\[\033[0m '
# PS1='\[\033[31m[\w]\[\033[32m\u@\h$\[\033[0m '

# PS1="\[\033[32m\][\h:\u@:\w \t]$ \[\033[0m\]"
PS1="\[\033[32m\][\h:\u@:\w \t]\n$ \[\033[0m\]"

# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ls='ls -la'
alias ll='ls -la'
alias hh='history'


export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

#重複履歴を無視 
export HISTCONTROL=ignoreboth
export HISTSIZE=10000

# historyに時刻
HISTTIMEFORMAT='%Y%m%d %T ';
export HISTTIMEFORMAT

#export LANG=ja_JP.UTF-8
#export LANG=ja_JP.SHIFT_JIS
#export SUPPORTED=ja_JP.SJIS:ja_JP:ja

# nagamoto private
export hosting='00.00.00.00'

