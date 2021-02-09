windows系统下按照以下方式进行安装：

## 安装gvim

1. 从[vim.org](https://www.vim.org/) 下载安装gvim
2. 把gvim安装目录加入到环境变更PATH中

## python安装

下载安装python，并检查python安装路径是否加入到环境变量PATH中。

__注意：gvim和python需要相互匹配，比如gvim是32位，那么python也应该安装32位的__

## clone本项目

1. 先clone到本地
`git clone https://github.com/qw8880000/NiceVim.git $HOME/NiceVim`

2. 创建符号链接
```
mklink $HOME/vimfiles/vimrc $HOME/NiceVim/_vimrc
mklink $HOME/vimfiles/_gvimrc $HOME/NiceVim/_gvimrc
```

## 安装vim-plug插件

下载[vim-plug](https://github.com/junegunn/vim-plug)，把plug.vim 放到 vimfiles 的"autoload"目录。

## 安装rg(ripgrep)插件

LeaderF 插件可搭配ripgrep进行快速搜索。以下进行ripgrep的安装。

1. 下载[ripgrep](https://github.com/BurntSushi/ripgrep)
2. 解压ripgrep到C盘或其他路径，并设置环境变量PATH

[rg中文文档](https://github.com/chinanf-boy/ripgrep-zh#%E6%9B%B4%E6%96%B0-)

## 安装ctags

1. 下载[ctags](http://ctags.sourceforge.net/)
2. 解压ctags到C盘或其他路径，并设置环境变量PATH

__备注：LeaderF与tagbar会使用到ctags__

## 一些安装包地址

- gvim 64位: <http://software-zone.wangjinle.com/gvim_8.2.1095_x64.exe>
- gvim 32位: <http://software-zone.wangjinle.com/gvim_8.2.1095_x86.exe>
- git client: <http://software-zone.wangjinle.com/Git-2.19.1-64-bit.exe>
- ctags: <http://software-zone.wangjinle.com/ctags58.zip>
- python2 64位: <http://software-zone.wangjinle.com/python-2.7.17.amd64.msi>
- python2 32位: <http://software-zone.wangjinle.com/python-2.7.17.msi>
- python3 64位: <http://software-zone.wangjinle.com/python-3.8.3-amd64.exe>
- python3 32位: <http://software-zone.wangjinle.com/python-3.8.2.exe>
- ripgrep: <http://software-zone.wangjinle.com/ripgrep-12.1.1-x86_64-pc-windows-msvc.zip>
- vim中文文档: <http://software-zone.wangjinle.com/vimcdoc-2.1.0-setup-unicode.exe>
