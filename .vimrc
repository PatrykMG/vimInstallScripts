" =========================================================================

" 	VIM PMG config file 
" 	mail: gawronski1.6@gmail.com
" =========================================================================

" -------------------------------------------------------------------------
" vim config section (without plugins)
" -------------------------------------------------------------------------

" syntax
syn on

" line numbers 
set nu

" set colorscheme
colorscheme smarties

set langmenu=en_GB.UTF-8
set enc=utf-8

"set guioptions-=m
set guioptions-=T

set nocompatible
set backspace=indent,eol,start

set autoindent
set laststatus=2
set completeopt=menu,longest





" ----------------------------------------------------------------
" Vundle Plugin Manager
" ----------------------------------------------------------------

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'




Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ----------------------------------------------------------------
" Syntastic default setup
" ----------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:sntastic_check_on_w = 1


" ----------------------------------------------------------------
" Vim-airline config section
" -----------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='base16_3024'
set guifont=Hack\ 12


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" -------------------------------------------------------------------------
" Vim YouComplete me config section
" -------------------------------------------------------------------------

let g:ycm_min_num_of_chars_for_completion = 1      " default YCM value is 2
let g:ycm_min_num_indentifier_candidate_chars = 0  " default YCM value
let g:ycm_auto_trigger = 1			   " default YCM value
let g:ycm_show_diagnostics_ui = 0		   " default YCM value is 1 this turns off YCM syntax checker  
let g:ycm_error_symbol = '>>'			   " defualt YCM value
let g:ycm_warning_symbol = '>>'			   " default YCM value
let g:ycm_enable_diagnostic_signs = 1 		   " default YCM value
let g:ycm_enable_diagnostic_highlighting = 1 	   " default YCM value
let g:ycm_echo_current_diagnostic = 1 		   " default YCM value
let g:ycm_complete_in_comments = 1 		   " defualt YCM value is 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1 " 

" ---  more options to se at
"  https://github.com/Valloric/YouCompleteMe#options



