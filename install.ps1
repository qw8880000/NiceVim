Push-Location ~

$app_name    = "NiceVim"
$repo_url    = "https://github.com/qw8880000/NiceVim.git"
$repo_name   = "NiceVim"
$repo_path   = "$HOME\.NiceVim"

echo "==> Testing git"
if (Get-Command "git" -ErrorAction SilentlyContinue) {
    git version
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo ""
    echo "[ERROR] Unable to find 'git.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}

echo "==> Testing vim"
if (Get-Command "gvim" -ErrorAction SilentlyContinue) {
    echo ($(vim --version) -split '\n')[0]
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo "[ERROR] Unable to find 'gvim.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}

echo "==> Testing python"
if (Get-Command "python" -ErrorAction SilentlyContinue) {
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo "[ERROR] Unable to find 'python.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}

# clone本项目
if (!(Test-Path "$repo_path")) {
    echo "==> Trying to clone $app_name"
    git clone $repo_url $repo_path
} else {
    echo "==> Trying to update $app_name"
    Push-Location $repo_path
    git pull origin master
}

if (!(Test-Path "$HOME\vimfiles")) {
    cmd /c mklink /D $HOME\vimfiles $repo_path
} else {
    echo "[OK] vimfiles already exists"
	sleep 1
}

# 安装vim-plug插件
$vim_plug_path = "$HOME\vimfiles\vim-plug"
if (!(Test-Path "$vim_plug_path")) {
    echo "==> Trying to clone vim-plug"
    git clone https://github.com/junegunn/vim-plug.git $vim_plug_path
    cmd /c mklink /D $HOME\vimfiles\autoload\plug.vim $vim_plug_path\plug.vim
} else {
    echo "==> Trying to update vim-plug"
    Push-Location $vim_plug_path
    git pull origin master
}

## 安装rg(ripgrep)插件
## 安装ctags

echo "==> 完成"
Pause

# vim:set ft=ps1 nowrap: 
