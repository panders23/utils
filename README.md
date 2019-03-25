# utils
## usage
### bin/clone_window
to clone active window with current cwd
```sh
bin/clone_window
```
you can also run your own program with the cwd of the active window
```sh
bin/clone_window -- /usr/bin/urxvt
```

for programs that ignore current shell cwd
```sh
bin/clone_window -p -- /usr/bin/nemo
```
this append path as argument so it looks like this
```
/usr/bin/nemo ~
```
---
written to be used with sxhcd or i3wm.

## Requirements

### bin/clone_window
- bash >= 4
- coreutils

one of:
- xdotool
- xprop

optional dependencies:
- procps-ng (faster than ps)
