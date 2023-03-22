export ZSH=~/.config/zsh
source $ZSH/config/base.zsh
source $ZSH/config/git.zsh
source $ZSH/config/zsh.zsh
source $ZSH/config/fzf.zsh


# 隐私配置 可将非通用的配置写入 config/private.zsh 注意此文件不会随git管理
[ -f $ZSH/config/private.zsh ] && source $ZSH/config/private.zsh
