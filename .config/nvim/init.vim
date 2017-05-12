"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.local/share/dein.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.local/share/dein.vim')
  call dein#begin('$HOME/.local/share/dein.vim')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.local/share/dein.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('WolfgangMehner/c-support')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
set cc=78                       " Color column
set hlsearch
set incsearch                   " do incremental searching
set viewoptions=cursor,folds,slash,unix
" let g:skipview_files = ['*\.vim']
colorscheme elflord

" Show line numbers.
set number
set autochdir                   " automatically make current working dir the same as current buffer's file
set browsedir=current           " make browsing directory the current working
set hidden
set textwidth=78                " Wrap lines longer than 79 characters
set formatoptions+=t            " Make wrapping occur at word boundaries
set swapfile
set dir=~/tmp                   " Directory for swapfiles
set clipboard=unnamedplus
set mouse=a
set ruler
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set nobackup                    " Remove the backup after successfully writing the file
set writebackup                 " Make a backup before overwriting (saving) a file
set nowrap                      " do not wrap lines
set visualbell                  " visual bell instead of beeping
set nocompatible
set history=50                  " keep 50 lines of command line history

au FileType bzl setl shiftwidth=4 softtabstop=4 et
au FileType python setl shiftwidth=4 softtabstop=4 et
au FileType c setl shiftwidth=4 softtabstop=4 et
au FileType cpp setl shiftwidth=4 softtabstop=4 et
au FileType vim setl shiftwidth=4 softtabstop=4 et
au FileType python setl shiftwidth=4 softtabstop=4 et
au FileType tex setl shiftwidth=4 softtabstop=4 et
au FileType markdown setl shiftwidth=4 softtabstop=4 et
au FileType groovy setl shiftwidth=4 softtabstop=4 et
au FileType cmake setl shiftwidth=4 softtabstop=4 et
au FileType matlab setl shiftwidth=4 softtabstop=4 et

set list
set listchars=tab:\|\ 

" Highlight trailing white space, as per http://vim.wikia.com/wiki/VimTip396
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

" YouCompleteMe settings
"let g:ycm_key_list_select_completion = ['<TAB>', '<Enter>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<S-Enter>']
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1

" rust vim settings
"let g:rustfmt_autosave = 1
"let g:rustfmt_fail_silently = 1

" c-support settings
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes'
let g:C_CCompiler='clang'
let g:C_CplusCompiler='clang++'
let g:C_CplusCFlags='-Wall -Wno-deprecated-register -std=c++14 -stdlib=libc++ -g -O2 -c'
let g:C_CplusLFlags='-Wall -Wno-deprecated-register -std=c++14 -stdlib=libc++ -g -O2'
let g:C_CFlags='-Wall -std=c11 -g -O2 -c'
"

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

