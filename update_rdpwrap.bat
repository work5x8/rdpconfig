@echo off

REM 停止TermService服务
net stop TermService

set d=%USERPROFILE%\Desktop

REM 复制文件并覆盖
copy /Y "%d%\rdpwrap.ini" "C:\Program Files\RDP Wrapper\rdpwrap.ini" || (
    echo 复制文件时发生错误
)

REM 等待1秒
ping 127.0.0.1 -n 1 -w 1000 >NUL

REM 启动TermService服务
net start TermService

echo 脚本执行完成
pause
