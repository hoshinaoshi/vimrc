# vim-plug
[ミニマリストの僕にはvim-plugが性に合っている](https://qiita.com/kentarosasaki/items/86c64316c0494c89117a)

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```


# YouCompleteMeインストール
[vim のコード補完プラグインYouCompleteMe クイックインストールガイド](https://qiita.com/TsutomuNakamura/items/2fc8aa6c0feaf31c86e4#ycm_extra_confpy-%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%AE%E6%BA%96%E5%82%99)

```
brew install cmake
export PATH=/usr/local/bin:$PATH
brew update
brew install vim && brew install macvim
brew link macvim

curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

curl -fLo "${HOME}/.ycm_extra_conf.py" "https://raw.githubusercontent.com/Valloric/ycmd/master/.ycm_extra_conf.py"

xcode-select --install

vim +PlugInstall +"sleep 1000m" +qall

cd ~/.vim/plugged/YouCompleteMe

./install.py --clang-completer
```
