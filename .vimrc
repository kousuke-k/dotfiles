set number
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set smartindent

autocmd QuickfixCmdPost * copen

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/kousuke/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/kousuke/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" Add or remove your Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'kakkyz81/evervim'
NeoBundle 'kana/vim-submode'
NeoBundle 'open-browser.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
let g:evervim_devtoken='S=s6:U=be810:E=155b62c8075:C=14e5e7b51a8:P=1cd:A=en-devtoken:V=2:H=b5a74f805ac83ecc7f5e2a12fa5e6b4e'

let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>-')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')
call submode#map('winsize', 'n', '', '+', '<C-w>+')
call submode#map('winsize', 'n', '', '-', '<C-w>-')
