#!/bin/bash

VCS_PROMPT=""

if [[ -d ".svn" ]]
then
  SVN_ROOT=`svn info 2>&1 |  grep "Repository Root" | cut -d '/' -f 3- `
  if [[ -n "$SVN_ROOT" ]]
  then
    VCS_PROMPT="\[\033[00;33m\](\[\033[00;37m\]$SVN_ROOT\[\033[00;33m\]) \[\033[01;34m\]"
  fi
fi


HG_BRANCH=`hg branch 2>&1`
if [[ -z "$VCS_PROMPT" && $? == 0 ]]
then
  VCS_PROMPT="\[\033[00;33m\](\[\033[00;37m\]$HG_BRANCH\[\033[00;33m\]) \[\033[01;34m\]"
fi

GIT_BRANCH=`git branch 2>&1 | grep \* | cut -d ' ' -f 2`
if [[ -z "$VCS_PROMPT" && -n "$GIT_BRANCH" ]]
then
  VCS_PROMPT="\[\033[00;33m\](\[\033[00;37m\]$GIT_BRANCH\[\033[00;33m\]) \[\033[01;34m\]"
fi


if [[ -e $VIRTUAL_ENV ]]
then
  ENVNAME=`echo $VIRTUAL_ENV | cut -d / -f 5`
  VENV_PROMPT="\[\033[00;33m\][\[\033[00;37m\]$ENVNAME\[\033[00;33m\]] "
else
  VENV_PROMPT=""
fi

export PS1="$VENV_PROMPT[\[\033[32m\]\w]\[\033[0m\] \n\[\033[1;36m\]\u\[\033[1;33m\] $VCS_PROMPT-> \[\033[0m\]"
#export PS1="$VENV_PROMPT\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $VCS_PROMPT$ \[\033[00m\]"
