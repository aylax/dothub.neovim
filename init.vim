" ===============================================
" init.vim --- Vim :: Init
" ===============================================


"" == Sets Basic ==

" Sets no backup
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " no write backup file
set noundofile     " no undo files

" Sets disable vi mode
set nocompatible

" Sets reserved history lines
set history=240

" Sets filetype plugin on
filetype plugin on
filetype indent on

" Sets map leader
let mapleader = ";"

" Sets basic encoding
set encoding=utf8

" Sets plain text format
set syntax=on                     " Syntax on
set expandtab                     " Replace <tab> as <space>
set shiftwidth=4                  " Indent width
set tabstop=4                     " Display tab width
set softtabstop=4                 " Tune tab on vim insert mode
set backspace=2                   " Backspace with
set ruler                         " Open status bar ruler
set number                        " Show line number
set showmatch                     " Highlight matched brackets
set matchtime=1                   " Brackets highlight residence time

" Sets status line
set laststatus=2                  " Show status line


"" == Sets Plugin ==
call plug#begin('~/.config/nvim/plugins')

"" Theme
Plug 'rose-pine/neovim', {'as': 'rose-pine' }
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"" NERDTree
Plug 'preservim/nerdtree'

"" Snippets
Plug 'SirVer/ultisnips'

"" Fast Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

"" With NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>
nnoremap <leader><space> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1

"" With Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snippets.d"]

"" With Fzf
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <silent> <Leader>b :Buffers<CR>


"" === Set Color Theme ==
colorscheme rose-pine
lua << EOF
require'lualine'.setup {
    options = { theme = 'rose-pine' }
}
EOF
