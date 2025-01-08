# confi3
These are the dotfiles that I personally use in my i3 + picom setup. It's very slightly modified from the default presets of these programs.
![what you would expect from this](./assets/rice.png)

## Key bindings
This is uses your keyboard's Win key as the `$mod` key. However, to change the wallpaper and colors, press `$mod+Shift+M` to change the wallpaper, and the color scheme additionally.

## Prerequisites
```
kitty
picom
polybar
xwallpaper
zenity
```

## Bugs, TODOs and Contributing
This configuration is still in WIP and if you face any problems, but know how to fix it, you should make an issue or a PR with your fix.

### Known bugs:
- No wallpaper by default, user has to press key binding to set it.
- Polybar looks broken upon first login.
- `./wal.sh` cannot set the color scheme from `$mod+Shift+M` invokation.

### TODO:
- Make the configuration remember your wallpaper
- Add a keybinding for screenshotting
- Make Polybar look less bland

## Licensing
MIT License.
