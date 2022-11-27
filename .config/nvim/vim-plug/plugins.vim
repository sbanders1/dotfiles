" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/tagbar'
    Plug 'preservim/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/vim-github-dashboard'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'karb94/neoscroll.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'tpope/vim-commentary'
    Plug 'scrooloose/syntastic'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'w0rp/ale'
call plug#end()
