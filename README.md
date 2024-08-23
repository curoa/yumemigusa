jp ubuntu
https://www.ubuntulinux.jp/download

install Ubuntu

partition
```
ssd
efi system partition 4GiB=4295MB
ext4 /

hdd
ext4 /home
```
なぜか hdd が初期化されずに、/home が保存されてた。嬉しい。2024/04/09

with third party software

```
sudo apt update
sudo apt upgrade
sudo apt install build-essential xsel colordiff curl sysstat
```

install Nvidia driver
`sudo apt install nvidia-driver-XXX`
XXX はバージョン以下で正しそうな番号を確認
https://www.nvidia.com/ja-jp/drivers/
`ubuntu-drivers devices`
    open じゃないのが良さそう
    recommended は当てにならない

reboot

install chrome
公式が出した
https://support.google.com/chrome/answer/95346?hl=ja&co=GENIE.Platform%3DDesktop#zippy=%2Clinux

文字サイズ
`sudo apt install gnome-tweaks`
tweaks で 倍率 2.0

.ssh の　key を移す
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 644 ~/.ssh/known_hosts


```
# ref. https://git-scm.com/download/linux
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
```
set ssh for github, and clone this repository
`git clone https://github.com/curoa/yumemigusa.git`

```
# ref. https://github.com/git-lfs/git-lfs/blob/main/INSTALLING.md
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
# ref. https://docs.github.com/ja/repositories/working-with-files/managing-large-files/configuring-git-large-file-storage
```

シンボリックリンク  
```
cd
ln -s ~/yumemigusa/local/bin ~/.local/bin
ln -s ~/yumemigusa/gitconfig ~/.gitconfig
ln -s ~/yumemigusa/zshrc ~/.zshrc
ln -s ~/yumemigusa/zsh ~/.zsh
ln -s ~/yumemigusa/config/* ~/.config
ln -s ~/yumemigusa/ssh_config ~/.ssh/config
ln -s ~/yumemigusa/four ~/four
```

cvs 設定
`mkdir -p ~/.local/var/cv_data/`

```
sudo apt install terminator
```

```
sudo apt install zsh
chsh -s $(which zsh)
```

キーボード設定
https://qiita.com/curoa/items/9bf52d90a8f60beb5c00

ディレクトリを英語に
`LANG=C xdg-user-dirs-gtk-update`
https://www.rough-and-cheap.jp/linux/ubuntu-change-xdg-directory-name/


画像は Google Drive で管理
https://drive.google.com/drive/folders/0B1BdHf2G96URfnpacTdWbmZPdGk4el91cjFFSC10QmJKSHVLSXBwdWhNMExzcDFfcEFMVjA?resourcekey=0-D0qaGYe7k3PBjBuA2wS-aQ

youtube, meet as app
chrome で開いて、URLバーからアプリインストール。一回閉じて、windows key から検索で起動してタスクバーにお気に入り登録
https://support.google.com/chrome_webstore/answer/3060053?hl=ja#zippy=%2Cchrome-%E3%82%A6%E3%82%A7%E3%83%96%E3%82%B9%E3%83%88%E3%82%A2%E3%81%8B%E3%82%89%E3%82%A2%E3%83%97%E3%83%AA%E3%82%92%E8%BF%BD%E5%8A%A0%E3%81%99%E3%82%8B
これをしたり、URL からアプリとして開くとかしてるうまくいった。

pyenv  # install dependencies ref. https://github.com/pyenv/pyenv#install-python-build-dependencies  
poetry  # ref. https://python-poetry.org/docs/#installing-with-the-official-installer  
`curl -sSL https://install.python-poetry.org | python3 -`  

use n to install nodejs
https://qiita.com/nouernet/items/d6ad4d5f4f08857644de

nvim  
ref. https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2  
treesitter が neovim 0.9.2 以降しかサポートしてない  
:PackerInstall, :PackerUpdate, :PackerCompile # よく分かってない  
新しく nvim を入れたら tsx のインデントが崩れた 2024/8/11
    古いPCから .local/share/nvim/site/pack/packer/start を移したら正しくなった。
    packer の git commit をメモする
        nvim-surround v2.1.5
        nvim-treesitter fbe7621
        packer ea0cc3c


イヤホンを接続していても、デフォルトで hdmi から音声出力
ref. https://scrapbox.io/yosider/Ubuntu%E3%81%AE%E3%82%B5%E3%82%A6%E3%83%B3%E3%83%89%E3%81%A7%E5%86%85%E9%83%A8%E3%82%B9%E3%83%86%E3%83%AC%E3%82%AA%E3%82%88%E3%82%8AHDMI%E3%82%92%E5%84%AA%E5%85%88%E3%81%99%E3%82%8B
```
pactl list short sinks # check name
# code: /etc/pulse/default.pa # edit tail of file according to URL
rm -r ~/.config/pulse/ # delete cache
killall pulseaudio # reboot pulseaudio


pactl set-default-sink alsa_output.pci-0000_01_00.1.hdmi-stereo
# write shell script to do above command, and add ubuntsu startup apps
# you can search startup setting by "自動"
```


google chrome で画面共有できないとき
https://askubuntu.com/questions/1407494/screen-share-not-working-in-ubuntu-22-04-in-all-platforms-zoom-teams-google-m

TODO
cuda
前回 2024/4 に cuda を入れたときは shell の描画がリフレッシュされない問題が発生した。
cuda のせいだとは断言できないが、タイミング的にそんな気がしている

IME Mozc 入力のスペースと括弧を半角に
