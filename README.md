# phono-theme
JWM theme inspired by the color scheme of the Braun Regie Hi-Fi products.

Read more about JWM (Joe's Window Manager) at http://joewing.net/projects/jwm.

![Screenshot](https://github.com/cbettinger/phono-theme/blob/master/screenshot.png)

## Prerequisites
* Xorg
* JWM
* Liberation Sans Font
* [xdgmenumaker](https://github.com/gapan/xdgmenumaker)

On Ubuntu:
```shell
sudo apt install xorg jwm fonts-liberation txt2tags python-xdg python-gtk2

wget https://github.com/gapan/xdgmenumaker/archive/master.zip

unzip master.zip
cd xdgmenumaker-master
make
sudo make install
cd ..
rm -rf ./xdgmenumaker-master
rm -f master.zip
```

## Installation
On Ubuntu:
```shell
wget https://github.com/cbettinger/phono-theme/archive/master.zip

unzip master.zip
cd phono-theme-master
make install
cd ..
rm -rf ./phono-theme-master
rm -f master.zip
````

To update your menu every time you start X call `xdgmenumaker` in your `.xinitrc`, e.g.:

```shell
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```

## Options

### Start menu icon
On FreeBSD you might want to change the Ubuntu specific start menu icon to the provided `start-bsd.png` or any other PNG file.

```xml
<!--<TrayButton icon="start-ubuntu.png" label="Start">root:2</TrayButton>-->
<TrayButton icon="start-bsd.png" label="Start">root:2</TrayButton>
```

### xcompmgr
The menu and the windows can be rendered with transparency by using the `xcompmgr` composite manager. Install it with

On Ubuntu:
```shell
sudo apt install xcompmgr
```

and run `xcompmgr` in the background every time you start X by adding a call to your `.xinitrc`, e.g.:

```shell
xcompmgr -f -F &
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```

### .Xresources
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
xrdb ~/.Xresources
xdgmenumaker -n -i -f jwm > ~/.jwmmenu
exec jwm
```

Make sure the monospace font `Inconsolata` is installed:

On Ubuntu:
```shell
sudo apt install fonts-inconsolata
```
