"Geral"
set number
set pastetoggle=<F2>
:filetype on

set backspace=indent,eol,start

"Syntax highlighting do faiska"
syntax on

au BufRead,BufNewFile *.npl set filetype=npl
syntax on
au! Syntax npl source $HOME/.vim/syntax/npl.vim

au BufRead,BufNewFile *.mod set filetype=gmpl
syntax on
au! Syntax gmpl source $HOME/.vim/syntax/gmpl.vim

"Syntax highlighting do archc"
au BufRead,BufNewFile *.ac set filetype=archc
au! Syntax archc source $HOME/.vim/syntax/archc.vim

"Syntax highlighting do OpenCL"
au BufRead,BufNewFile *.cl set filetype=opencl
au! Syntax opencl source $HOME/.vim/syntax/opencl.vim
"
"Syntax highlighting TeX°
au BufRead,BufNewFile *.tex set spell

"Para o python"
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py im :<CR> :<CR><TAB>


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'aklt/plantuml-syntax'
Plugin 'scrooloose/vim-slumlord'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

"filesystem
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'shumphrey/fugitive-gitlab.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
let g:fugitive_gitlab_domains = ['http://serv113.corp.eldorado.org.br/gitlab/']
let g:gitlab_api_keys = {'http://serv113.corp.eldorado.org.br': 'bsGukfbsVHpdAR4g9yXX'}
