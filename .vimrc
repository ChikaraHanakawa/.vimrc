" setting
" 文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 括弧とクォーテーションの自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
" <Leader>というプレフィックスキーにスペースを使用する
let g:mapleader = "\<Space>"
" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>
" コマンドライン補完するときに強化されたものを使う
set wildmenu

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" ルーラーを表示
set ruler

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" Undoの永続化
if has('persistent_undo')
  let undo_path = expand('~/.vim/undo')
  exe 'set undodir=' .. undo_path
  set undofile
endif

" キーボード系統
" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>
" スペース + wでファイル保存
nnoremap <Leader>w :w<CR>
" スペース + . でvimrcを開く
nnoremap <Leader>. :new ~/.vimrc<CR>
" vvで後ろ全てを選択
vnoremap v $h

" ファイル操作に関する設定
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
set nobackup

set clipboard=unnamed,autoselect
set fileencoding=utf-8
set encoding=utf-8
set softtabstop=4
set shiftwidth=4
set textwidth=0
set switchbuf=useopen   " 新しく開く代わりにすでに開いてあるバッファを開く
set nowritebackup
set noswapfile
set virtualedit=all     " カーソルを文字が存在しない部分でも動けるようにする
syntax on
