#!/bin/bash

##################################################
##
## 初期設定用



useradd nagamoto
yum install -y vim wget

# root bash
cat  << EOS > /root/.bashrc 
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

# PS1='\033[35m[\w]\n\033[33m\u@\h$\033[0m '
#PS1="\[\033[31m\]AAA\[\033[0m\]"
#PS1='\[\033[35m[\w]\n\[\033[33m\u@\h$\[\033[0m '
PS1="\[\033[31m\][\h:\u@:\w \t]$ \[\033[0m\]"


# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ll='ls -la'
alias hh='history'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 重複履歴を無視 
export HISTCONTROL=ignoredups
export HISTSIZE=10000

# historyに時刻
HISTTIMEFORMAT='%Y%m%d %T ';
export HISTTIMEFORMAT
EOS

# root vim
cat  << EOS > /root/.vimrc 
syntax on
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set ic
set nu
set noautoindent

set incsearch
set hlsearch

set paste

colorscheme desert

if has("autocmd")
  autocmd FileType * let &l:comments=join(filter(split(&l:comments, ','), 'v:val =~ "^[sme]"'), ',')
endif

nnoremap p "0p
EOS

# 俺アカウント用
cat  << EOS > /home/nagamoto/.bashrc 
#source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

# PS1='\033[35m[\w]\n\033[33m\u@\h$\033[0m '
#PS1="\[\033[31m\]AAA\[\033[0m\]"
#PS1='\[\033[35m[\w]\n\[\033[33m\u@\h$\[\033[0m '
PS1="\[\033[33m\][\h:\u@:\w \t]$ \[\033[0m\]"


# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ll='ls -la'
alias hh='history'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 重複履歴を無視 
export HISTCONTROL=ignoredups
export HISTSIZE=10000

# historyに時刻
HISTTIMEFORMAT='%Y%m%d %T ';
export HISTTIMEFORMAT
EOS

cat  << EOS > /home/nagamoto/.vimrc 
#source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

# PS1='\033[35m[\w]\n\033[33m\u@\h$\033[0m '
#PS1="\[\033[31m\]AAA\[\033[0m\]"
#PS1='\[\033[35m[\w]\n\[\033[33m\u@\h$\[\033[0m '
PS1="\[\033[33m\][\h:\u@:\w \t]$ \[\033[0m\]"


# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ll='ls -la'
alias hh='history'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 重複履歴を無視 
export HISTCONTROL=ignoredups
export HISTSIZE=10000

# historyに時刻
HISTTIMEFORMAT='%Y%m%d %T ';
export HISTTIMEFORMAT
[debserver2:nagamoto@:~ 17:40:50]$ cat .vimrc
syntax on
set encoding=utf-8

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set ic
set nu
set noautoindent

set incsearch
set hlsearch

set paste

colorscheme desert

if has("autocmd")
  autocmd FileType * let &l:comments=join(filter(split(&l:comments, ','), 'v:val =~ "^[sme]"'), ',')
endif

nnoremap p "0p
EOS

