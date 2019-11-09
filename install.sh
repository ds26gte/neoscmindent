# last modified 2019-11-09
# Dorai Sitaram

if test ! -d ~/.config/nvim; then
  echo Your Neovim setup is unusual. Please see README.adoc
  echo on how to install neoscmindent for your system.
  exit
fi

PACKDIR=~/.config/nvim/pack/3rdpartyplugins/start

mkdir -p $PACKDIR

rm -fr $PACKDIR/neoscmindent

if test -d ../neoscmindent; then
  cp -prH ../neoscmindent $PACKDIR
else
  cd $PACKDIR
  git clone https://github.com/ds26gte/neoscmindent
fi
