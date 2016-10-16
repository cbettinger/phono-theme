# phono-theme
JWM theme inspired by the color scheme of the Braun Regie 308 Control Unit.

![Screenshot](https://github.com/cbettinger/phono-theme/blob/master/screenshot.png)

## Prerequisites
* Liberation Sans (Font)
* [xdgmenumaker](https://github.com/gapan/xdgmenumaker)

On FreeBSD:

```shell
pkg install liberation-fonts-ttf txt2tags py27-xdg py27-gtk2

wget https://github.com/gapan/xdgmenumaker/archive/master.zip
unzip master.zip
cd xdgmenumaker-master
make
make install
cd ..
rm -rf ./xdgmenumaker-master
rm -f master.zip
```

## Installation
```shell
wget https://github.com/cbettinger/phono-theme/archive/master.zip
unzip master.zip
mkdir -p ~/.icons/phono-theme
cp ./phono-theme-master/icons/*.png ~/.icons/phono-theme
cp ./phono-theme-master/.jwmrc ~/.jwmrc
rm -rf ./phono-theme-master
rm -f master.zip

xdgmenumaker -n -i -f jwm > ~/.jwmmenu
```

To update your menu every time you start X call `xdgmenumaker` in your `.xinitrc`, e.g.:

```shell
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```
