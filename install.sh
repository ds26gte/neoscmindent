# last modified 2019-11-13
# Dorai Sitaram

VICONFIGDIR=${XDG_CONFIG_HOME:-~/.config}/nvim

if test ! -d $VICONFIGDIR; then
  if test "$(which nvim)"; then
    mkdir -p $VICONFIGDIR
  else
    echo You don\'t appear to be using Neovim\; trying Vim...
    export VICONFIGDIR=~/.vim
    if test ! -d ~/.vim; then
      if test "$(which vim)"; then
        mkdir -p ~/.vim
      else
        echo You don\'t appear to be using Vim either.
        echo Please see README.adoc on how to install neoscmindent
        echo on your system.
        exit
      fi
    fi
    echo You appear to be using Vim.
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

if test -d $PACKDIR/neoscmindent/doc; then
  cd $PACKDIR/neoscmindent/doc
  EXEDIT=$(if test "$(which nvim)"; then echo nvim; else echo vim;fi)
  $EXEDIT -es -c 'helptags .'
fi
