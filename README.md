# utils
my personal utilities

polished, rewritten, dust cleaned, just for you

## usage
### x11/clone_window
to clone active window with current cwd
```sh
x11/clone_window
```
you can also run your own program with the cwd of the active window
```sh
x11/clone_window -- /usr/bin/urxvt
```

for programs that ignore current shell cwd
```sh
x11/clone_window -p -- /usr/bin/nemo
```
this append path as argument so it looks like this
```
/usr/bin/nemo ~
```
---
written to be used with sxhcd or i3wm.

## Requirements

### x11/clone_window
- bash >= 4
- coreutils

one of:
- xdotool
- xprop

optional dependencies:
- procps-ng (faster than ps)
