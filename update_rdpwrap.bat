@echo off

REM ֹͣTermService����
net stop TermService

set d=%USERPROFILE%\Desktop

REM �����ļ�������
copy /Y "%d%\rdpwrap.ini" "C:\Program Files\RDP Wrapper\rdpwrap.ini" || (
    echo �����ļ�ʱ��������
)

REM �ȴ�1��
ping 127.0.0.1 -n 1 -w 1000 >NUL

REM ����TermService����
net start TermService

echo �ű�ִ�����
pause
