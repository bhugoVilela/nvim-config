let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +112 lua/bhugo/ui/init.lua
badd +299 lua/bhugo/SplashScreen/lines.lua
badd +0 http://www.lua.org/manual/5.1/manual.html\#pdf-table.remove
badd +105 lua/bhugo/SplashScreen/ascii.lua
argglobal
%argdel
edit lua/bhugo/ui/init.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 114 + 92) / 185)
exe 'vert 2resize ' . ((&columns * 70 + 92) / 185)
argglobal
balt lua/bhugo/SplashScreen/lines.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999
setlocal fml=1
setlocal fdn=20
setlocal fen
14
normal! zo
48
normal! zo
63
normal! zo
97
normal! zo
99
normal! zo
110
normal! zo
let s:l = 112 - ((18 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 112
normal! 055|
wincmd w
argglobal
enew
balt lua/bhugo/ui/init.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/.config/nvim
wincmd w
exe 'vert 1resize ' . ((&columns * 114 + 92) / 185)
exe 'vert 2resize ' . ((&columns * 70 + 92) / 185)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
