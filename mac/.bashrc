
# PS1="\u \h \w \t> "
#PS1='\033[36m[\u@\h:\w]#\033[0m '
#PS1='\033[36m[\u@:\w \t]#\033[0m '
#PS1='\[\033[0;36m\][\u@\h:\t]$'
#PS1='[\u@\[\e[31m\]\h\[\e[0m\] \W]\$ '
#PS1='\e[36m\][\u@:\w \t]$\e[0m\] '
#PS1='\e[32m\][\u:\h@:\w \t]$\e[0m\] '

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


#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
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





#gamoo aws dev
#export devgamoo='54.248.96.211' terminate
#export devweb='54.248.99.132' terminate


# nagamoto private
export hosting='54.248.93.53'

