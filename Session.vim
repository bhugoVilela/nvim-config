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
badd +4 test.lua
badd +99 lua/bhugo/ui/init.lua
badd +47 ~/.local/share/nvim/lazy/which-key.nvim/lua/which-key/text.lua
badd +0 ~/.local/share/nvim/lazy/which-key.nvim/lua/which-key/view.lua
badd +0 ~/.local/share/nvim/lazy/which-key.nvim/lua/which-key/layout.lua
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
exe 'vert 1resize ' . ((&columns * 91 + 81) / 163)
exe 'vert 2resize ' . ((&columns * 71 + 81) / 163)
argglobal
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9999
setlocal fml=1
setlocal fdn=20
setlocal fen
31
normal! zo
92
normal! zo
136
normal! zo
137
normal! zo
169
normal! zo
172
normal! zo
178
normal! zo
192
normal! zo
212
normal! zo
214
normal! zo
224
normal! zo
257
normal! zo
let s:l = 99 - ((37 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 99
normal! 050|
lcd ~/.config/nvim
wincmd w
argglobal
enew
balt ~/.config/nvim/lua/bhugo/ui/init.lua
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
exe 'vert 1resize ' . ((&columns * 91 + 81) / 163)
exe 'vert 2resize ' . ((&columns * 71 + 81) / 163)
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
