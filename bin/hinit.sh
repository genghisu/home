#!/bin/sh -x

USER=hxu
THOME=/tmp/$USER
HOME=/home/$USER

#### Ubuntu Package Installation
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python3 git vim build-essential

#### Main Setup
sudo mkdir $THOME
sudo chown $USER $THOME
git clone git@github.com:genghisu/home.git       $THOME
git clone git@github.com:genghisu/oh-my-zsh.git  $THOME/.oh-my-zsh

rsync -avtz --delete $THOME/ $HOME/
rm -rf $THOME

# symlinks
chown -Rh $USER $HOME

grep -lR $THOME $HOME |xargs perl -pi -e "s,$THOME,$HOME,g"

echo "Done"
