# .vimrc
***My vimrc***
## A.wslでの運用方法
1:molokaiを導入する為に[こちら](https://github.com/tomasr/molokai)のGitHubのリポジトリをクローンする。
```.vimrc:REAME.md
git clone https://github.com/tomasr/molokai.git
```
2:**molokai**を
**.vim**に移動
```.vimrc:README.md
mv molokai/colors/ ~/.vim/
```
3:**.vimrc**を開く
```.vimrc:README.md
vi .vimrc
```
4:下記又は、vimrc.txtをコピーして**.vimrc**に貼り付ける
```
"Windows Subsystem for Linus
syntax on
colorscheme molokai
set t_Co=256
hi Comment ctermfg=130
hi Visual ctermbg=200
" 行番号の表示
set number
" 現在の行の強調表示
set cursorline
```
