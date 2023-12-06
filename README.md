jp ubuntu
https://www.ubuntulinux.jp/download

apt update upgrade
sudo apt install build-essential xsel

install chrome

文字サイズ
tweaks で 倍率 2.0

可能な限りシンボリックリンク  
local -> ~/.local  
gitconfig -> ~/.gitconfig  
zshrc -> ~/.zshrc  
zsh -> ~/.zsh  
config -> ~/.config  

install terminator

install zsh

set ssh for github, and clone this repository

キーボード設定
https://qiita.com/curoa/items/9bf52d90a8f60beb5c00

ディレクトリを英語に
https://www.rough-and-cheap.jp/linux/ubuntu-change-xdg-directory-name/


画像は Google Drive で管理
https://drive.google.com/drive/folders/0B1BdHf2G96URfnpacTdWbmZPdGk4el91cjFFSC10QmJKSHVLSXBwdWhNMExzcDFfcEFMVjA?resourcekey=0-D0qaGYe7k3PBjBuA2wS-aQ

youtube, meet as app
https://support.google.com/chrome_webstore/answer/3060053?hl=ja#zippy=%2Cchrome-%E3%82%A6%E3%82%A7%E3%83%96%E3%82%B9%E3%83%88%E3%82%A2%E3%81%8B%E3%82%89%E3%82%A2%E3%83%97%E3%83%AA%E3%82%92%E8%BF%BD%E5%8A%A0%E3%81%99%E3%82%8B
これをしたり、URL からアプリとして開くとかしてるうまくいった。

pyenv  # install dependencies ref. https://github.com/pyenv/pyenv#install-python-build-dependencies  
poetry  

nvim  
TSInstall python bash html htmldjango cpp json yaml javascript lua vim


イヤホンを接続していても、デフォルトで hdmi から音声出力
https://scrapbox.io/yosider/Ubuntu%E3%81%AE%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%81%A7%E5%86%85%E9%83%A8%E3%82%B9%E3%83%86%E3%83%AC%E3%82%AA%E3%82%88%E3%82%8AHDMI%E3%82%92%E5%84%AA%E5%85%88%E3%81%99%E3%82%8B
```
pactl list short sinks # check name
# code:/etc/pulse/default.pa # edit tail of file according to URL
rm -r ~/.config/pulse/ # delete cache
killall pulseaudo # reboot pulseaudo
```
