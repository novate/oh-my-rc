sed -i 's/mirrors.aliyun.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
apk update
rm -f ~/.zshrc
wget https://raw.githubusercontent.com/novate/oh-my-rc/master/zsh/.zshrc ~/.zshrc
rm -rf ~/.vim
git clone https://github.com/novate/novate_vim.git ~/.vim
echo '---------------------------------------------------'
echo 'All done! Enjoy!'
echo 'Please remember to do this command: source ~/.zshrc'
echo '---------------------------------------------------'