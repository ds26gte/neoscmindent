# last modified 2019-11-13
# Dorai Sitaram

VICONFIGDIR=${XDG_CONFIG_HOME:-~/.config}/nvim

if test ! -d $VICONFIGDIR; then
  echo You don\'t appear to be using Neovim\; trying Vim...
  if test ! -d ~/.vim; then
    echo You don\'t appear to be using Vim either.
    echo Please see README.adoc on how to install neoscmindent
    echo on your system.
    exit
  else
    echo You appear to be using Vim.
    export VICONFIGDIR=~/.vim
  fi
fi

PACKDIR=$VICONFIGDIR/pack/3rdpartyplugins/start

mkdir -p $PACKDIR

rm -fr $PACKDIR/neoscmindent

if test -d ../neoscmindent; then
  cp -prH ../neoscmindent $PACKDIR
else
  cd $PACKDIR
  git clone https://github.com/ds26gte/neoscmindent
fi
