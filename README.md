<h1 align="center">myconf</h1>

### These are the dotfiles that I personally use in my i3 + picom setup. It's very slightly modified from the default presets of these programs.

## About
These dotfiles are very simple and are just modifications from the sample configuration files provided by the programs used in this.

To my choice, for GTK programs, ZorinOS's Grey theme is optionally provided for use. This is licensed under GPLv2.

A good program I recommend you to change your themes with is [ThemeChanger](https://github.com/ALEX11BR/ThemeChanger) - available in the AUR.

All commits will have these prefixes before the commit message. From the top and bottom represent the importance of these as shown:
```
    ^   (addition)
    |   (cosmetic)
    |   (readme)
    v   (chore)
```

## Key bindings
This uses your keyboard's Win key as the `$mod` key. Most of the original key bindings from i3 are left unchanged. 
However, to change the wallpaper and colors, press `$mod+Shift+M` to change the wallpaper, and the color scheme additionally.

## Prerequisites
```
kitty
mate-terminal
picom
polybar
pywal
rofi
xwallpaper (to use feh soon)
zenity

fonts-cascadia-code && CaskaydiaMono NF*
```
> CaskaydiaMono NF can be installed from the Nerd Fonts website.

My dotfiles heavily rely on `pywal` for the colors. The dotfiles wouldn't even work properly without it. So, always be 100% sure to have pywal installed if not anything else.

## Installation
Clone this repository, and run `make`.

The `make`file provides two post-install targets that you can run.
- `disable-blur` disables blur of all translucent elements.
- `disable-kitty-opacity` disables opacity from `kitty`.
- `retain-wallpaper` doesn't work (yet) and I am on the works to fix it with all my due abilities.

## Bugs, TODOs and Contributing
This configuration is still in WIP and if you face any problems, but know how to fix it, you should make an issue or a PR with your fix.

### Known bugs:
- No wallpaper by default, user has to press key binding to set it.
- Polybar looks broken upon first login.

### TODO:
- Make the configuration remember your wallpaper
    - Note: The logic behind this was implemented but doesn't work, yet.
- [x] Add a keybinding for screenshotting
- [x] Make Polybar look less bland
- Use `feh` instead of `xwallpaper`

## License
MIT License - Rest of the repository
GPLv2 - Zorin Grey theme.
