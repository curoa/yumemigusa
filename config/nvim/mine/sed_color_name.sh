SCRIPT_DIR=$(dirname $0)
cd $SCRIPT_DIR

cp highlight.vim _highlight.vim
sed -i -s "s/=yellow/=#FFF231/" _highlight.vim check_my_color.vim
sed -i -s "s/=lime/=#99D02B/" _highlight.vim check_my_color.vim
sed -i -s "s/=green/=#38ba68/" _highlight.vim check_my_color.vim
sed -i -s "s/=teal/=#20c5af/" _highlight.vim check_my_color.vim
sed -i -s "s/=aqua/=#51b8e1/" _highlight.vim check_my_color.vim
sed -i -s "s/=blue/=#508fe2/" _highlight.vim check_my_color.vim
sed -i -s "s/=grape/=#7c76cc/" _highlight.vim check_my_color.vim
sed -i -s "s/=violet/=#A45AAA/" _highlight.vim check_my_color.vim
sed -i -s "s/=ruby/=#DF4C94/" _highlight.vim check_my_color.vim
sed -i -s "s/=red/=#F9344C/" _highlight.vim check_my_color.vim
sed -i -s "s/=sunset/=#FC4E32/" _highlight.vim check_my_color.vim
sed -i -s "s/=orange/=#cc7b10/" _highlight.vim check_my_color.vim
