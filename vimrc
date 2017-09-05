" For project VIM RC
set exrc
set secure
execute pathogen#infect()
" Start NERDTree on startup
autocmd vimenter * NERDTree
" Focus file window in NerdTree and close when no windows
autocmd VimEnter * wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
"	q
"endifi
" Setup tabs
set tabstop=2
set shiftwidth=2
set expandtab
" Autoindentation
filetype indent on
" Airline enabled
set laststatus=2
syntax on
filetype on
au BufNewFile,BufRead *.gls setfiletype c
au BufNewFile,BufRead *.ts set filetype=c
colorscheme 256-grayvim 
" Tab Line
let g:airline#extensions#tabline#enabled = 1

" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%121v.*/

let g:ycm_collect_identifiers_from_tags_files=1
set tags+=~/Scripts/ssd-script-development/tags

nnoremap <C-c> :CtrlPTag<cr>

let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

set number
au BufWritePost *.gls,*.ts,*.h,*.c,*.cpp !ctags -R --langmap=c:+.gls,c:+.ts,c:+.h --c++-kinds=+q --extra=+q --fields=+liaS &

let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': ''} }
