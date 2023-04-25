" Plugin Setup:

call plug#begin('~/.config/nvim/plugged')

" Sensible Defaults:
Plug 'tpope/vim-sensible'

" NetRW Extensions:
Plug 'tpope/vim-vinegar'

" Color Schemes:
Plug 'joshdick/onedark.vim'

" Syntax Extensions:
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'JulesWang/css.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-git'

" Git Bindings And Gutter Stats:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Enable Fancy TMUX Navigation:
Plug 'christoomey/vim-tmux-navigator'

" StatusBar:
Plug 'itchyny/lightline.vim'

" Finding:
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" AutoCompletion:
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Readline Style Line Navigation:
Plug 'tpope/vim-rsi'

" Comment Bindings:
Plug 'tpope/vim-commentary'

" Fix Autoread:
Plug 'tmux-plugins/vim-tmux-focus-events'

" Change Surround:
Plug 'tpope/vim-surround'

" Directory browser:
Plug 'preservim/nerdtree'

" Language Server:
Plug 'neovim/nvim-lspconfig'

call plug#end()
