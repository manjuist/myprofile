@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

IF NOT EXIST "c:\backup" (
    call mkdir "c:\backup"
)

IF NOT EXIST "c:\swp" (
    call mkdir "c:\swp"
)

IF NOT EXIST "c:\undo" (
    call mkdir "c:\undo"
)

@set APP_NAME=dvim
@set APP_PATH=%HOME%\%APP_NAME%
IF NOT EXIST "%APP_PATH%" (
    call git clone -b 3.0 https://github.com/manjuist/%APP_NAME%.git "%APP_PATH%"
) ELSE (
    @set ORIGINAL_DIR=%CD%
    echo updating %APP_NAME%
    chdir /d "%APP_PATH%"
    call git pull
    chdir /d "%ORIGINAL_DIR%"
    call cd "%APP_PATH%"
)

call mklink "%HOME%\.vimrc" "%APP_PATH%\.vimrc"
call mklink "%HOME%\.vimrc.plugins" "%APP_PATH%\.vimrc.plugins"
call mklink "%HOME%\.vimrc.custom" "%APP_PATH%\.vimrc.custom"
call mklink /J "%HOME%\.vim" "%APP_PATH%\"
call mklink /J "%HOME%\vimfiles" "%APP_PATH%\"

IF NOT EXIST "%APP_PATH%\colors" (
    call mkdir "%APP_PATH%\colors"
)

IF NOT EXIST "%APP_PATH%\autoload" (
    call mkdir "%APP_PATH%\autoload"
)

IF NOT EXIST "%APP_PATH%\plugged" (
    call mkdir "%APP_PATH%\plugged"
)

IF NOT EXIST "%HOME%\.vim\plugged\vim-plug" (
    call git clone https://github.com/junegunn/vim-plug.git "%HOME%\.vim\plugged\vim-plug"
) ELSE (
  call cd "%HOME%\.vim\plugged\vim-plug"
  call git pull
  call cd %HOME%
)

call copy "%HOME%\.vim\plugged\vim-plug\plug.vim" "%HOME%\vimfiles\autoload\plug.vim"

call vim +PlugInstall! +PlugClean +qall

call copy "%APP_NAME%\colors\gruvbox.vim" "%HOME%\vimfiles\colors\gruvbox.vim"
