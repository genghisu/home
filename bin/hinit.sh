#!/bin/sh -x

USER=hxu
THOME=/tmp/$USER
HOME=/home/$USER

#### Main Setup
sudo mkdir $THOME
sudo chown $USER $THOME
git clone git@github.com:genghisu/home.git       $THOME
git clone git@github.com:genghisu/dotfiles.git   $THOME/.dotfiles
git clone git@github.com:robbyrussell/oh-my-zsh.git  $THOME/.oh-my-zsh

git clone git://github.com/sstephenson/rbenv.git  $THOME/.rbenv
mkdir -p $THOME/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git $THOME/.rbenv/plugins/ruby-build

cd $THOME/.dotfiles/
git submodule update --init --recursive >/dev/null

#rsync -avtz --delete $THOME/ $HOME/
#rm -rf $THOME

# symlinks
chown -Rh $USER $HOME

grep -lR $THOME $HOME |xargs perl -pi -e "s,$THOME,$HOME,g"

echo "Done"
