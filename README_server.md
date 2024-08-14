# git lfs

git が ssh での lfs に未対応なので、サードパーティ実装のものを用意する必要がある

ref.
https://nnishiza.hatenablog.jp/entry/2023/12/09/223029
https://github.com/bk2204/scutiger

```sh
sudo apt update
sudo apt install rustc cargo make git zlib1g-dev libpcre2-dev libgit2-dev

git clone https://github.com/bk2204/scutiger
cd scutiger
make
sudo cp target/release/git-lfs-transfer /usr/local/bin/
```

