```shell
cd $HOME && \
git clone --bare https://github.com/Rhast/home-dir $HOME/.cfg && \
alias home='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' && \
```
```shell
home checkout
```
