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
badd +43 ~/.config/nvim/lua/user/alpha.lua
badd +19 ~/.config/nvim/lua/user/bufferline.lua
badd +1 ~/.config/nvim/lua/user/lualine.lua
badd +1 ~/.config/nvim/lua/user/telescope.lua
badd +1 ~/.config/nvim/lua/user/whichkey.lua
badd +4 ~/.config/nvim/lua/user/impatient.lua
badd +7 ~/.config/nvim/lua/user/plugins.lua
badd +23 ~/.config/nvim/lua/user/toggleterm.lua
badd +1 ~/.config/nvim/lua/user/treesitter.lua
badd +18 ~/.config/nvim/lua/user/ufo.lua
badd +29 ~/.config/nvim/lua/user/dap.lua
badd +3 ~/.config/nvim/lua/user/colorscheme.lua
badd +14 ~/.config/nvim/lua/user/options.lua
badd +103 ~/.config/nvim/lua/user/keymaps.lua
badd +1 ~/.config/nvim/lua/user/nvim-tree.lua
badd +1 ~/.config/nvim/lua/user/project.lua
badd +1 ~/.config/nvim/lua/user/lastplace.lua
badd +26 ~/.config/nvim/lua/user/lf.lua
badd +15 ~/.config/nvim/init.lua
argglobal
%argdel
edit ~/.config/nvim/lua/user/plugins.lua
argglobal
balt ~/.config/nvim/lua/user/options.lua
let s:l = 188 - ((16 * winheight(0) + 34) / 69)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 188
normal! 030|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
