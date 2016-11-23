# phono-theme
JWM theme inspired by the color scheme of the Braun Regie Hi-Fi products.

Read more about JWM (Joe's Window Manager) at http://joewing.net/projects/jwm.

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
cd phono-theme-master
make install
cd ..
rm -rf ./phono-theme-master
rm -f master.zip

xdgmenumaker -n -i -f jwm > ~/.jwmmenu
```

To update your menu every time you start X call `xdgmenumaker` in your `.xinitrc`, e.g.:

```shell
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```

## .Xresources
The customization of the terminal and the calculator as seen in the screenshot can be adopted by adding the following lines to your `.Xresources`:

```
*background: #1B1A18
*foreground: #D3D8D2

urxvt*geometry: 100x24
urxvt*internalBorder: 4
urxvt*font: xft:Inconsolata:size=10
urxvt*scrollBar: false

xterm*geometry: 100x24
xterm*faceName: Inconsolata
xterm*faceSize: 10
xterm*utf8: 1

xcalc.geometry: 200x275
xcalc.ti.bevel.background: #1B1A18
xcalc.ti.bevel.screen.background: #D3D8D2
xcalc.ti.bevel.screen.LCD.background: #D3D8D2
xcalc.ti.bevel.screen.LCD.foreground: #000000
xcalc.ti.bevel.screen.DEG.background: #D3D8D2
xcalc.ti.bevel.screen.DEG.foreground: #000000
xcalc.ti.bevel.screen.GRAD.background: #D3D8D2
xcalc.ti.bevel.screen.GRAD.foreground: #000000
xcalc.ti.bevel.screen.RAD.background: #D3D8D2
xcalc.ti.bevel.screen.RAD.foreground: #000000
xcalc.ti.bevel.screen.INV.background: #D3D8D2
xcalc.ti.bevel.screen.INV.foreground: #000000
xcalc.ti.bevel.screen.M.background: #D3D8D2
xcalc.ti.bevel.screen.M.foreground: #000000
xcalc.ti.bevel.screen.P.background: #D3D8D2
xcalc.ti.bevel.screen.P.foreground: #000000
xcalc.ti.Command.background: #5B4A3A
xcalc.ti.Command.foreground: #FFFFFF
xcalc.ti.button5.background: #E84033
xcalc.ti.button21.background: #00713D
xcalc.ti.button26.background: #00713D
xcalc.ti.button31.background: #00713D
xcalc.ti.button36.background: #00713D
xcalc.ti.button22.background: #000000
xcalc.ti.button23.background: #000000
xcalc.ti.button24.background: #000000
xcalc.ti.button27.background: #000000
xcalc.ti.button28.background: #000000
xcalc.ti.button29.background: #000000
xcalc.ti.button32.background: #000000
xcalc.ti.button33.background: #000000
xcalc.ti.button34.background: #000000
xcalc.ti.button37.background: #000000
xcalc.ti.button38.background: #000000
xcalc.ti.button39.background: #000000
xcalc.ti.button40.background: #F2B826
```

To load this file every time you start X call `xrdb` in your `.xinitrc`, e.g.:

```shell
xrdb ~/.Xresourdes
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```
