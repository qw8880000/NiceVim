windows系统下按照以下方式进行安装：

gvim 64位: <http://software-zone.wangjinle.com/gvim_8.2.1095_x64.exe>
gvim 32位: <http://software-zone.wangjinle.com/gvim_8.2.1095_x86.exe>
git client: <http://software-zone.wangjinle.com/Git-2.19.1-64-bit.exe>
ctags: <http://software-zone.wangjinle.com/ctags58.zip>
python2 64位: <http://software-zone.wangjinle.com/python-2.7.17.amd64.msi>
python2 32位: <http://software-zone.wangjinle.com/python-2.7.17.msi>
python3 64位: <http://software-zone.wangjinle.com/python-3.8.3-amd64.exe>
python3 32位: <http://software-zone.wangjinle.com/python-3.8.2.exe>
ripgrep: <http://software-zone.wangjinle.com/ripgrep-12.1.1-x86_64-pc-windows-msvc.zip>
vim中文文档: <http://software-zone.wangjinle.com/vimcdoc-2.1.0-setup-unicode.exe>

## 安装gvim

从[vim.org](https://www.vim.org/) 下载安装gvim

## python安装

__注意：gvim和python需要相互匹配，比如gvim是32位，那么python也应该安装32位的__

## clone本项目

1. 先clone到本地
`git clone https://github.com/qw8880000/NiceVim.git $HOME/NiceVim`

2. 创建符号链接
```
mklink $HOME/vimfiles/_vimrc $HOME/NiceVim/_vimrc
mklink $HOME/vimfiles/_gvimrc $HOME/NiceVim/_gvimrc
```

## 安装vim-plug插件

下载[vim-plug](https://github.com/junegunn/vim-plug)，把plug.vim 放到 vimfiles 的"autoload"目录。可使用命令：
`git clone https://github.com/junegunn/vim-plug.git $HOME/vimfiles/autoload/`

```powershell
md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)
```

## 安装rg(ripgrep)插件

LeaderF 插件可搭配[ripgrep](https://github.com/BurntSushi/ripgrep)插件进行快速搜索。
1. 下载安装rg
  - 下载ripgrep-12.1.1-x86_64-pc-windows-msvc.zip
  - 解压，设置环境变量

[rg中文文档](https://github.com/chinanf-boy/ripgrep-zh#%E6%9B%B4%E6%96%B0-)

5. 安装ctags

LeaderF function与tagbar使用到ctags
下载：http://ctags.sourceforge.net/
解压，然后设置为环境变量

