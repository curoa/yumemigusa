SCRIPT_DIR=$(dirname $0)
cd $SCRIPT_DIR

cp highlight.vim _highlight.vim
sed -i -s "s/=yellow/=#fff231/" _highlight.vim check_my_color.vim
sed -i -s "s/=lime/=#99d02b/" _highlight.vim check_my_color.vim
sed -i -s "s/=green/=#38ba68/" _highlight.vim check_my_color.vim
sed -i -s "s/=teal/=#20c5af/" _highlight.vim check_my_color.vim
sed -i -s "s/=aqua/=#51b8e1/" _highlight.vim check_my_color.vim
sed -i -s "s/=blue/=#508fe2/" _highlight.vim check_my_color.vim
sed -i -s "s/=grape/=#7c76cc/" _highlight.vim check_my_color.vim
sed -i -s "s/=violet/=#a45aaa/" _highlight.vim check_my_color.vim
sed -i -s "s/=ruby/=#df4c94/" _highlight.vim check_my_color.vim
sed -i -s "s/=red/=#f9344c/" _highlight.vim check_my_color.vim
sed -i -s "s/=sunset/=#fc4e32/" _highlight.vim check_my_color.vim
sed -i -s "s/=orange/=#cc7b10/" _highlight.vim check_my_color.vim
sed -i -s "s/=solid/=#aaaaaa/" _highlight.vim check_my_color.vim
sed -i -s "s/=dark/=#222222/" _highlight.vim check_my_color.vim
