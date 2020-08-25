@PowerShell -ExecutionPolicy Bypass -Command Invoke-Expression $('$args=@(^&{$args} %*);'+[String]::Join(';',(Get-Content '%~f0') -notmatch '^^@PowerShell.*EOF$')) & goto :EOF


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

echo "==> clone the project"
if (!(Test-Path "$repo_path")) {
    echo "==> Trying to clone $app_name"
    git clone $repo_url $repo_path
} else {
    echo "==> Trying to update $app_name"
    Push-Location $repo_path
    git pull origin master
}

if (!(Test-Path "$repo_path\vimrc")) {
cmd /c mklink $HOME\vimfiles\vimrc $repo_path\_vimrc
cmd /c mklink $HOME\vimfiles\_gvimrc $repo_path\_gvimrc
}

echo "==> install vim-plug"
$vim_plug_path = "$HOME\vimfiles\autoload\vim-plug"
if (!(Test-Path "$vim_plug_path")) {
    echo "==> Trying to clone vim-plug"
    git clone --depth=1 https://github.com/junegunn/vim-plug.git $vim_plug_path
} else {
    echo "==> Trying to update vim-plug"
    Push-Location $vim_plug_path
    git pull origin master
}

cmd /c mklink $HOME\vimfiles\autoload\plug.vim $vim_plug_path\plug.vim

echo "==> Done"
Pause

# vim:set ft=ps1 nowrap: 
