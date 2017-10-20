execute pathogen#infect()

syntax on
colorscheme badwolf

" Leader shortcuts
let mapleader=","

" Tab handling
set tabstop=4
set softtabstop=4
" Convert tabs to spaces
set expandtab

set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
" Show matching brackets/parentheses
set showmatch

" Searching
" Search as characters are entered
set incsearch 
" Highlight matches
set hlsearch
" Hit <space> to unhighlight everything from previous search
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
" Open most folds by default
set foldenable
set foldnestmax=10
" Fold based on indentation
set foldmethod=indent
" Space to open/close folds
nnoremap <space> za

" Ctrl-e to edit last file
nnoremap <C-e> :e #<CR>

" NERDtree
map <C-n> :NERDTreeToggle<CR>

" ProseMode with Goyo.vim
function! ProseMode()
  call goyo#execute(0, [])
  set spell noci nosi noai nolist noshowmode noshowcmd
  set complete+=s
  set bg=light
  if !has('gui_running')
    let g:solarized_termcolors=256
  endif
  colors solarized
endfunction

command! ProseMode call ProseMode()
nmap \p :ProseMode<CR>

