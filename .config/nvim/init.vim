source $HOME/.config/nvim/vim-plug/plugins.vim
set nu
filetype on
imap jj <Esc>
map <Leader>vv :Vifm<CR>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
map <Leader>y "*y
map <Leader>p "*p
" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" NERTREE settings
nmap <C-f> :NERDTreeToggle<CR>
nmap <C-n> :NERDTreeFocus<CR>
nmap <b> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"vim-smoothie keymaps
nmap <C-k> <C-u>k
nmap <C-j> <C-d>k
"Map the copying and pasting to `y` and `p`
"y and p in visual mode will copy/paste directly to system buffer 
vnoremap Y "*y
vnoremap P "*p
vnoremap y "+y
vnoremap p "+p
"OneDark Theme
"source $HOME/.config/nvim/themes/onedark.vim

"Palenight Theme
"let g:palenight_terminal_italics=1
"set background=dark
"colorscheme palenight
"let g:lightline = { 'colorscheme': 'palenight'} 
"if (has("nvim"))
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif
"if (has("termguicolors"))
"  set termguicolors
"endif

"Gruvbox theme
let g:gruvbox_italic=1
autocmd vimenter * colorscheme gruvbox

"cpp nvim settings for compiling code
nnoremap <C-c> :!g++ -o  %:r.out % -std=c++11<Enter>
nnoremap <C-x> :!./%:r.out
autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++11 -O2 -Wall % -o %:r && %:r.exe <cr>

"Neomake Setup
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 500ms; no delay when writing).
call neomake#configure#automake('nrwi', 500)
