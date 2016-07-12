#!/bin/bash

##################################################
##
## 初期設定用
##
##
## curl -ocreate_rc.sh https://raw.githubusercontent.com/nagamoo/my_config/master/im_linux/create_rc.sh
## chmod 755 create_rc.sh
## ./create_rc.sh



useradd nagamoto
yum install -y vim wget
yum update -y

# root bash
cat  << EOS > /root/.bashrc 
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

PS1='\[\e[1;31m\]\u@\h\[\e[0m\] \[\e[37m\][\t]\[\e[0m\] \[\e[36m\][\w]\[\e[0m\] \n \[\e[31m\]\$\[\e[0m\]'

# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ll='ls -la'
alias hh='history'
alias ps='ps awuxf'

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
PS1='\[\e[1;33m\]\u@\h\[\e[0m\] \[\e[37m\][\t]\[\e[0m\] \[\e[36m\][\w]\[\e[0m\] \n \[\e[33m\]\$\[\e[0m\]'


# User specific aliases and functions
alias pwd='pwd -P'
alias cd='cd -P'
alias ll='ls -la'
alias hh='history'
alias ps='ps awuxf'

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


#DIR COLOR 書換
sed -i -e "s/DIR 01;34/DIR 01;35/" /etc/DIR_COLORS
eval `dircolors /etc/DIR_COLORS -b`

yum -y install ntp
cp /etc/ntp.conf{,.org}
sed -i -e "s/server 0.centos.pool.ntp.org iburst/server -4 ntp.nict.jp/" /etc/ntp.conf
sed -i -e "s/server 1.centos.pool.ntp.org iburst/server -4 ntp1.jst.mfeed.ad.jp/" /etc/ntp.conf
sed -i -e "s/server 2.centos.pool.ntp.org iburst/server -4 ntp2.jst.mfeed.ad.jp/" /etc/ntp.conf
sed -i -e "s/server 3.centos.pool.ntp.org iburst/server -4 ntp3.jst.mfeed.ad.jp/" /etc/ntp.conf
ntpdate ntp.nict.jp
service ntpd start
chkconfig ntpd on

cd
source /root/.bashrc
