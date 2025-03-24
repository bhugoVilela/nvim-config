# Nvim Config
My well organized and somewhat simple nvim config.

## Key features
Features I implemented:

- **Smart tabline**
    - Shows only the last patch component of the tab's cwd
    - manually set tabname with `let t:tabname="some name"`
- **<localleader>a** - to jump between associated files (ie. html <-> css)
    - [Implementation](/lua/bhugo/Other/init.lua)
    - Could do with a refactor, but it's been working for the past couple of years without changes so I didn't bother.
- **<c-h>/<c-j>/<c-k>/<c-l>** - to navigate UIs (ie. cmp, nvim-tree, oil)
- **:Config** - Opens `stdpath("config")` in a new tab, setting it as its cwd.


