FROM alpine

# Change source to aliyun mirror, and install packages.
# zsh is installed, and ameliorated with oh-my-zsh.
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add vim zsh wget curl wget git zsh-vcs \
    && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Change theme to agnoster.
RUN sed -i 's/"robbyrussell"/"agnoster"/g' ~/.zshrc

# Change back to TUNA mirror.
RUN sed -i 's/mirrors.aliyun.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

CMD ["zsh"]
