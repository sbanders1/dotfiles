source $HOME/.config/nvim/vim-plug/plugins.vim

" Formatting
set tabstop=4
set shiftwidth=4
set expandtab
set number
set relativenumber

" Remap leader
let mapleader=" "
imap jk <esc>
nnoremap ; :

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <Up>    <C-W>k
nnoremap <Down>  <C-W>j
nnoremap <Left>  <C-W>h
nnoremap <Right> <C-W>l

nnoremap <Leader>o m`o<Esc>``
nnoremap <Leader>O m`O<Esc>``

nnoremap zz :w<cr>
nnoremap <Tab> <C-w>w

nnoremap <Leader>x *``cgn
nnoremap <Leader>X #``cgN

" Neoscroll
" lua require('neoscroll').setup()

" NERDTree ----------
" Settings
let NERDTreeCHDirMode=0
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeQuitOnOpen=1
let NERDTreeKeepTreeInNewTab=1


"" NERDTree mappings
nnoremap <Leader>t :NERDTreeToggle<cr>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" nerdtree-git-plugin icons
" Override the default symbols
let g:NERDTreeIndicatorMapCustom = {
  \ 'Modified'  : 'M',
  \ 'Staged'    : 'S',
  \ 'Untracked' : '*',
  \ 'Renamed'   : 'R',
  \ 'Unmerged'  : 'U',
  \ 'Deleted'   : '!',
  \ 'Dirty'     : 'D',
  \ 'Clean'     : 'C',
  \ 'Ignored'   : 'I',
  \ 'Unknown'   : '?'
\ }

" PLUGIN: FZF
nnoremap <C-p> :GFiles<Cr>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <leader>l :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>


