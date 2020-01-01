set nocompatible              " be iMproved, required
set shell=/bin/bash
set number


filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-bundler'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'lifepillar/pgsql.vim'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'mhartington/oceanic-next'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'natebosch/vim-lsc'
Plugin 'ajh17/VimCompletesMe'
call vundle#end()            

execute pathogen#infect()
syntax on
filetype plugin indent on  
  if (has("termguicolors"))
   set termguicolors
  endif

colorscheme OceanicNext
let g:airline_theme='oceanicnext'

map <C-n> :NERDTreeToggle<CR>
let g:auto_save = 1  " enable AutoSave on Vim startup
 
			
let g:lsc_server_commands = {
 \  'ruby': {
 \    'command': 'solargraph stdio',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  },
 \  'javascript': {
 \    'command': 'typescript-language-server --stdio',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  }
 \}

let g:lsc_auto_map = {
 \  'GoToDefinition': 'gd',
 \  'FindReferences': 'gr',
 \  'Rename': 'gR',
 \  'ShowHover': 'K',
 \  'Completion': 'omnifunc',
 \}
let g:lsc_enable_autocomplete  = v:true
let g:lsc_enable_diagnostics   = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_trace_level          = 'off'
let g:ackprg = 'ag --vimgrep'

