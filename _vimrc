" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

" Make sure you use single quotes
 
 "Plug 'mechatroner/rainbow_csv'
 
 Plug 'vimwiki/vimwiki'
 
 "Plug 'scrooloose/syntastic' 

 "Plug 'scrooloose/nerdtree'

" A Vim plugin for Windows PowerShell support
 Plug 'PProvost/vim-ps1'

"STATUSBAR PLUGINS
" =================================================
"
" Plug 'itchyny/lightline.vim'
"
" lean & mean status/tabline for vim that's light as air
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

" =================================================

" Vim script for text filtering and alignment 
 Plug 'godlygeek/tabular'

" Plug 'plasticboy/vim-markdown'

" Plug 'tpope/vim-surround'

"  Distraction-free writing in Vim 
" Plug 'junegunn/goyo.vim'
" Hyperfocus-writing in Vim.
" Plug 'junegunn/limelight.vim'

" VIM Table Mode for instant table creation
 "Plug 'dhruvasagar/vim-table-mode'

" Plug 'JamshedVesuna/vim-markdown-preview'

" COLORSCHEMES
" =================================================
" VIM Colour scheme
 Plug 'patstockwell/vim-monokai-tasty'

" A Vim color scheme for 16-color terminals
 Plug 'noahfrederick/vim-noctu'
 "
" Nova color scheme plugin for Vim
 Plug 'trevordmiller/nova-vim'
 
 Plug 'rafi/awesome-vim-colorschemes'

" =================================================
"
 " Plug 'tpope/vim-commentary'

 "Plug 'sheerun/vim-polyglot'

 "Plug 'C:\ProgramData\chocolatey\lib\fzf\tools'
 "Plug 'junegunn/fzf', { 'dir': '~/_fzf', 'do': './install --all' }

 "Plug 'junegunn/fzf.vim'

" Vim-cool disables search highlighting when you are done searching and re-enables it when you search again.
 Plug 'romainl/vim-cool'

 "Plug 'xolox/vim-misc'
 "Plug 'xolox/vim-notes'

 "Plug 'soywod/kronos.vim'

 "Plug 'aserebryakov/vim-todo-lists'

 Plug 'itchyny/calendar.vim'



" Initialize plugin system
call plug#end()

 " Put your non-Plugin stuff after this line
 "
set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"source ~/.simplenoterc
"behave mswin
set nowrap

set rtp+=~/vimfiles

"if has('win32') || has('win64')
"  set runtimepath=$HOME\vimfiles,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/vimfiles/after
"endif

runtime macros/matchit.vim

set encoding=utf-8
scriptencoding utf-8
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
" }}}
"
" Spaces & Tabs {{{
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2
set modelines=1
set smartindent
set autoindent

" your working directory is always the same as the file you are editing
set autochdir

set foldcolumn=1
set cc=+1,+2

set linespace=0
set hidden
set history=1000
set list 
set listchars=tab:\ \ ,trail:.,extends:>,precedes:<,eol:¬,nbsp:_
" }}}
"
" Files and folders stuff {{{
filetype on
filetype indent on
filetype plugin on

" Search down into subfolders
" Provides tab-completion for all file related tasks
set path+=**
" }}}

" UI Layout {{{
set number              " show line numbers
set relativenumber          " show relative line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
"set cursorcolumn        " highlight current column
set wildmenu            " Display all matching files when we tab complete
set noshowmode          " its for Lightline plugin
"set lazyredraw
set showmatch           " higlight matching parenthesis
set visualbell          " set visualbell instead of audio (errorbells)
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Leader Shortcuts {{{
let mapleader=","
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>
"map <F2> :NERDTree<CR>
" }}}

" Colors {{{
syntax enable           " enable syntax processing
"set background=dark
"colorscheme onedark
"colorscheme nova
"colorscheme Tomorrow-Night-Bright

if has("gui_running")
    "colorscheme vim-monokai-tasty
    colorscheme badwolf
else
    "colorscheme noctu
    colorscheme tender
endif
" }}}

" Misc {{{
"set t_Co=256
set ttyfast                     " faster redraw
set backspace=indent,eol,start

  " Use Markdown for VimWiki
  let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
" }}}

" Folding {{{
"=== folding ===
"set foldmethod=indent   " fold based on indent level
"set foldnestmax=10      " max 10 depth
"set foldenable          " don't fold files by default on open
" nnoremap <space> za
"set foldlevelstart=10    " start with fold level of 1
" }}}
" Powerline {{{
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts = 1
set laststatus=2            " its for Lightline plugin
" }}}
" CtrlP {{{
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" NERDTree {{{
"let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
" }}}
" Syntastic {{{
"let g:syntastic_python_flake8_args='--ignore=E501'
"let g:syntastic_ignore_files = ['.java$']
" }}}
" Launch Config {{{
" }}}
" MacVim {{{
"set guioptions-=r 
"set guioptions-=L
" }}}
" Backups {{{
set nobackup 
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
"set backupskip=/tmp/*,/private/tmp/* 
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set nowritebackup
" }}}

" vim:foldmethod=marker:foldlevel=0
set guifont=Source_Code_Pro_for_Powerline:h10:cEASTEUROPE:qDRAFT
"set guifont=Hack
"
"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Inconsolata\ 12
"  elseif has("gui_macvim")
"    set guifont=Menlo\ Regular:h14
"  elseif has("gui_win32")
"    set guifont=Consolas:h11:cANSI
"  endif
"endif

 " Pathogen
 "execute pathogen#infect()

"set lines=35 columns=150
set colorcolumn=90

"set runtimepath^=~/vimfiles/bundle/ctrlp.vim

" }}}

"fu! SaveSess()
"    execute 'call mkdir(%:p:h/_vim)'
"    execute 'mksession! %:p:h/_vim/session.vim'
"endfunction

"fu! RestoreSess()
"execute 'so %:p:h/_vim/session.vim'
"if bufexists(1)
"    for l in range(1, bufnr('$'))
"        if bufwinnr(l) == -1
"            exec 'sbuffer ' . l
"        endif
"    endfor
"endif
"endfunction

"autocmd VimLeave * call SaveSess()
"autocmd VimEnter * call RestoreSess()

" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

" Making timestamp ad hoc
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" Switching between buffers with Tab key
noremap <tab> <c-w><c-w>

set redrawtime=10000

" FILE BROWSING {{{
  " Tweak for browsing
  let g:netrw_banner=1          " enable annoying banner
  let g:netrw_browse_split=0    " open in same window
  let g:netrw_altv=1            " open splits to the right
  let g:netrw_preview=1         " preview to the right
  let g:netrw_liststyle=3       " tree view
  let g:netrw_list_hide=netrw_gitignore#Hide()
  let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
  " Opening internet links in FF
  let g:netrw_browsex_viewer="C:\\Users\\pribyluk\\PortableApps\\FirefoxPortable\\FirefoxPortable.exe -new-tab"
" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"}}}

" Function for searching via <F6> for selected text by Google in FF
function GoogleSearch()
       let searchterm = getreg("g")
            silent! exec "silent! !C:\\Users\\pribyluk\\PortableApps\\FirefoxPortable\\FirefoxPortable.exe -new-tab \"http://google.com/search?q=" . searchterm . "\" "
          endfunction 
vnoremap <F6> "gy<Esc>:call GoogleSearch()<CR>

" Google Calendar in Calenda.vim
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Setting 24-bit terminal colors possible for Windows terminal
set termguicolors


cd $HOME

