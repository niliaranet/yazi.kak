# Yazi.kak
Spawn [Yazi](https://github.com/sxyazi/yazi)s from Kakoune!!
Inspired by [yazi.nvim](https://github.com/mikavilpas/yazi.nvim).

It provides commands(2) to spawn Yazi instances in separate terminals,
similar to [fzf.kak](https://github.com/andreyorst/fzf.kak).
When said instance opens a file, it opens in your editor.

## Current state
Still in development!
The code works but sucks too much to be reviewed.

Give it a couple more days.

## Setup
### Setup with plug.kak:
```kak
plug "niliaranet/yazi.kak"
```

### Manual setup:
Clone the repository into a destination of your choice:

```sh
git clone https://github.com/niliaranet/yazi.kak\
 ~/.config/kak/plugins/yazi.kak
```

and add the plugin to your kakrc file:
```kak
source "~/.config/kak/plugins/yazi.kak/rc/yazi.kak"
```

### Example mappings:
```kak
# open yazi in the current directory
map global normal <c-y> ':yazi<ret>'

# open yazi in the root directory
map global normal <a-y> ':yazi-project<ret>'

# kill current buffer (because they piss me off)
map global normal <c-k> ':db<ret>'
```
