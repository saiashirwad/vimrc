set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }

let loaded_matchparen = 1
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'neoclide/coc.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
call plug#end()

nmap <C-n> :NERDTreeToggle<CR>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


set mouse=a
map <ScrollWheelUp> <C-y>
map <ScrollWheelDown> <C-E>


set clipboard=unnamedplus
set cmdheight=1
set expandtab
set hidden
set hlsearch
set incsearch
set linebreak
set nobackup
set nocompatible
set nohlsearch
set noshowmode
set noswapfile
set nowrap
set nowritebackup
set ruler
set scrolloff=8
set shiftwidth=4
set shortmess+=c
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile
set updatetime=300


nmap <leader>bi :BufExplorer<CR>

nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>rr <Plug>(coc-rename)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nnoremap <leader>cr :CocRestart
nmap <leader>rn <Plug>(coc-rename)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

set background=dark

let g:coc_global_extensions = ['coc-vetur', 'coc-json', 'coc-tsserver', 'coc-svelte']

nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>

if !exists('g:context_filetype#same_filetypes')
  let g:context_filetype#filetypes = {}
endif

autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
autocmd FileType vue let b:coc_root_patterns = ['.git', '.env']

set number
set relativenumber


:nmap <space>e :CocCommand explorer<CR>


autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
