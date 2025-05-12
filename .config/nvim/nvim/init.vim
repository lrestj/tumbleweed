"""""""" Key bindings """""""""""""""""""""""""""""""""""""""""""""""""""""" 

let mapleader=" "
nnoremap ; :
nnoremap : ;
nnoremap <BS> X

nnoremap <A-j> :m .+1<CR>
nnoremap <A-k> :m .-2<CR>
inoremap <A-j> <Esc>:m .+1<CR>gi
inoremap <A-k> <Esc>:m .-2<CR>gi
vnoremap <A-j> :m '>+1<CR>gv
vnoremap <A-k> :m '<-2<CR>gv

vnoremap <C-c> "+y
noremap <C-v> "+p

noremap <C-tab> <C-w>w
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

nnoremap <leader><Tab> :buffer<Space>
noremap <C-b> :bp<CR>
noremap <C-n> :bn<CR>
noremap <leader>v :vnew<CR>
noremap <leader>x :bd<CR>

noremap <leader>a :normal! ggV$G$<CR>
nnoremap <leader><leader> :set relativenumber!<CR>
nnoremap <leader>nn :set nohlsearch<CR>

noremap <leader>l <C-w>L
noremap <leader>h <C-w>H

noremap <leader>y :Yazi<CR>
noremap <leader>ww :SudaWrite<CR>
noremap <leader>s :Startify<CR>
noremap <leader>ff :Telescope find_files<cr>
noremap <leader>fg :Telescope live_grep<cr>
noremap <leader>fb :Telescope buffers<cr>
noremap <leader>oo :Telescope oldfiles<cr>

nnoremap <leader>q ZQ

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:suda#prompt = 'Heslo: '
colorscheme wildcharm
syntax on
set mouse=a
set nocompatible
set backspace=indent,eol,start
set autoread
set laststatus=2
set showtabline=1
set directory=~/Veřejné//
set ignorecase
set ruler
set number
set scrolloff=2
set tabstop=2 shiftwidth=2 expandtab
set shada=!,'30,<50,s10,h

"""""""" Plug plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""

       call plug#begin()

" List your plugins here
Plug 'mhinz/vim-startify'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

       call plug#end()


"""""""" Startify greeter """"""""""""""""""""""""""""""""""""""""""""""""""
	
let g:startify_update_oldfiles = 1
let g:startify_files_number = 15
let g:startify_skiplist = [
  \ '~/.dotfiles/dotconfig/nvim/init.vim',
  \ ]

let g:startify_enable_special = 0
let g:startify_custom_indices = ['e', 'y', 'n', 'a', 'x', 'c', 'f', 'g', 'h', 'u', 'i', 'l']
let g:startify_custom_header = 'startify#pad(split(system("figlet -w 100 Neovim "), "\n"))'

let s:nvim_version = matchstr(execute('version'), 'NVIM v\zs[^\n]*')
let s:ascii = [ '                                                    verze ' . s:nvim_version ]
let g:startify_custom_footer = startify#center(s:ascii)

let g:startify_lists = [
        \ { 'type': 'commands'},
        \ { 'type': 'files',     'header': ['     Nedávné...'] },
        \ { 'type': 'bookmarks', 'header': ['    󰃀 Záložky'] },
        \ { 'type': 'sessions',  'header': ['     Sezení'] },
        \ ]

let g:startify_bookmarks = [
        \ { 'd':'~/.dotfiles'},
        \ ]

let g:startify_commands = [
        \ ['󰎔 Nový soubor', ':enew'],
        \ [' Správce souborů', ':Ranger'],
        \ [' Neovim init', ':e ~/.dotfiles/dotconfig/nvim/init.vim' ],
        \ ]

"""""""" Transparent background """"""""""""""""""""""""""""""""""""""""""""

highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

"""""""" NerdTree like settings """"""""""""""""""""""""""""""""""""""""""""

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
