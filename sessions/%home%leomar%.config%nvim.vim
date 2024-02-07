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
badd +36 ~/.config/nvim/lua/user/autocommands.lua
badd +11 ~/.config/nvim/lua/user/alpha.lua
badd +19 ~/.config/nvim/lua/user/bufferline.lua
badd +1 ~/.config/nvim/lua/user/lualine.lua
badd +1 ~/.config/nvim/lua/user/telescope.lua
badd +1 ~/.config/nvim/lua/user/whichkey.lua
badd +4 ~/.config/nvim/lua/user/impatient.lua
badd +185 ~/.config/nvim/lua/user/plugins.lua
badd +23 ~/.config/nvim/lua/user/toggleterm.lua
badd +1 ~/.config/nvim/lua/user/treesitter.lua
badd +18 ~/.config/nvim/lua/user/ufo.lua
badd +29 ~/.config/nvim/lua/user/dap.lua
badd +23 ~/.config/nvim/lua/user/colorscheme.lua
badd +38 ~/.config/nvim/lua/user/options.lua
badd +22 ~/.config/nvim/lua/user/keymaps.lua
badd +1 ~/.config/nvim/lua/user/nvim-tree.lua
badd +1 ~/.config/nvim/lua/user/project.lua
badd +1 ~/.config/nvim/lua/user/lastplace.lua
badd +26 ~/.config/nvim/lua/user/lf.lua
argglobal
%argdel
edit ~/.config/nvim/lua/user/keymaps.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/.config/nvim/lua/user/options.lua
let s:l = 54 - ((53 * winheight(0) + 35) / 70)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 54
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
