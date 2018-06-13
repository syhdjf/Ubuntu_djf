# Ubuntu_djf
Some thing used in my Ubuntu.  

bashrc.bak : copy from ~/.bashrc for command and path config  
vimrc.bak : copy from ~/.vimrc for vim config  
vim copy from ~/.vim  
cscope.android.sh : for android vim project ctags and cscope build,you need change some line in it!!!!!!!  
cscope.kernel.sh : for kernel vim project ctags and cscope build,you need change some line in it!!!!!!!!!  

不再使用之前的vimrc 及 vim 改为使用如下：
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp my_configs.vim ~/.vim_runtime/

其中最后这个是自己添加的配置文件
