@PowerShell -ExecutionPolicy Bypass -Command Invoke-Expression $('$args=@(^&{$args} %*);'+[String]::Join(';',(Get-Content '%~f0') -notmatch '^^@PowerShell.*EOF$')) & goto :EOF

Push-Location ~

$app_name    = "NiceVim"
$repo_url    = "https://github.com/qw8880000/NiceVim.git"
$repo_name   = "NiceVim"
$repo_path   = "$HOME\.NiceVim"

echo "`n`n==> Testing git"
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

echo "`n`n==> Testing vim"
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

echo "`n`n==> Testing python"
if (Get-Command "python" -ErrorAction SilentlyContinue) {
    python --version
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo "[ERROR] Unable to find 'python.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}

echo "`n`n==> Check $app_name"
if (!(Test-Path "$repo_path")) {
    echo "Trying to clone $app_name"
    git clone $repo_url $repo_path
} else {
    echo "Trying to update $app_name"
    Push-Location $repo_path
    git pull origin master
}

if (!(Test-Path "$HOME\vimfiles\vimrc")) {
    cmd /c mklink $HOME\vimfiles\vimrc $repo_path\_vimrc
}
if (!(Test-Path "$HOME\vimfiles\_gvimrc")) {
    cmd /c mklink $HOME\vimfiles\_gvimrc $repo_path\_gvimrc
}

echo "[OK] Test successfully. Moving to next..."

echo "`n`n==> Check vim-plug"
if (!(Test-Path "$HOME\vimfiles\autoload")) {
    md $HOME\vimfiles\autoload
}

$vim_plug_path = "$HOME\vimfiles\autoload\vim-plug"
if (!(Test-Path "$vim_plug_path")) {
    echo "Trying to clone vim-plug"
    git clone --depth=1 https://github.com/junegunn/vim-plug.git $vim_plug_path
} else {
    echo "Trying to update vim-plug"
    Push-Location $vim_plug_path
    git pull origin master
}

if (!(Test-Path "$vim_plug_path\plug.vim")) {
    cmd /c mklink $HOME\vimfiles\autoload\plug.vim $vim_plug_path\plug.vim
}

echo "[OK] Test successfully. Moving to next..."

echo "`n`n==> Test ripgrep"
if (Get-Command "rg" -ErrorAction SilentlyContinue) {
    rg --version
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo "[ERROR] Unable to find 'rg.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}

echo "`n`n==> Test ctags"
if (Get-Command "ctags" -ErrorAction SilentlyContinue) {
    ctags --version
    echo "[OK] Test successfully. Moving to next..."
    sleep 1
} else {
    echo "[ERROR] Unable to find 'ctags.exe' in your PATH"
    echo ">>> Ready to Exit......"
    Pause
    exit
}


echo "`n`n==> Done"
Pause

# vim:set ft=ps1 nowrap: 
