# Yazi.kak
Use the [Yazi](https://github.com/sxyazi/yazi) file manager from Kakoune!!
Inspired by [yazi.nvim](https://github.com/mikavilpas/yazi.nvim)
and [fzf.kak](https://github.com/andreyorst/fzf.kak).

It provides commands(2) to open Yazi instances in separate terminals.
When said instance picks a file, the file opens in your editor.

## Setup
### Setup with plug.kak
Add the following line to your kakrc:
```kak
plug "niliaranet/yazi.kak"
```

### Manual setup
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

# open yazi in the editor's directory
map global normal <a-y> ':yazi-root<ret>'
```
