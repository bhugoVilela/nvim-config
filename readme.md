# Bhugonvim
Built from Kickstart.nvim

Mostly-single-file config, with some of my own plugins extracted into their own folders.

[image](./splashscreen_photo.png)

## My Favorite Features
- Navigation with `<C-j>` `<C-k>` and submit with `<C-l>` (in cmp, nvim-tree, netrw, telescope)
    - this paired with caps-lock as control allows me to stay in the "homerow" for completion which is something I use a lot.
- I try to take the most advantage of native vim features, and only add plugins that I think really improve the experience
    (cmp, LSP, dressing, telescope, ToggleTerm, etc)
- My own small plugins, see `bhugo/Other`, `bhugo/xref.lua`
    - `Other` allows me to jump between `js(x)/ts(x) <-> (s)css`
    - `xref` allows me to jump when the cursor is over an "xref" `path:line:col`
