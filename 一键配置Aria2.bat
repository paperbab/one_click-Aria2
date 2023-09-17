@echo off
:: Paperbab @ Github
:: download from 
title Quik_Aria2 v1.1
echo 一键部署Aria2 v1.1
echo ===============================================================================
echo 主要功能：
echo * 一键下载 Aria2（可选 x86 x64）
echo * 自带镜像代理
echo * 图形化界面
echo * 附加托盘图标等功能
echo * 可选下载推荐配置文件
echo * 更新Aria2c
echo 使用说明：
echo * 所有选择页面，选项 1 均为默认选项
echo * 除本页外，其它所有选择页面在倒计时 2 分钟后将自动选择默认选项，本页倒计时等待 5 分钟
echo * 若修改下载文件夹、其他配置，后续请自行到配置文件中 手动配置
echo * 默认部署在D盘下！！！
echo * 默认RPC密码为12345
echo ===============================================================================
echo 请选择要下载的 Aria 版本(路径为D:\aria2)：
echo 1.Aria2 64bit【默认】
echo 2.Aria2 32bit
echo ===============================================================================
choice  /c 12 /n /m "请输入目标选项前的数字：" /d 1 /t 300
if %errorlevel%==2 (aira2c.exe https://ghproxy.com/https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0-win-32bit-build1.zip & 7z e -oD:/aria2 aria2-1.36.0-win-32bit-build1.zip)
if %errorlevel%==1 (aria2c.exe https://ghproxy.com/https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0-win-64bit-build1.zip & 7z e -oD:/aria2 aria2-1.36.0-win-64bit-build1.zip)
cls
echo ===============================================================================
echo 选择配置文件
echo 1.下载推荐配置文件【默认，改自P3TERX】
echo 2.不需要，谢谢
echo ===============================================================================
choice  /c 12 /n /m "请输入目标选项前的数字：" /d 1 /t 300
if %errorlevel%==2 (goto UI)
if %errorlevel%==1 (aria2c.exe -d D:/aria2 https://ghproxy.com/https://raw.githubusercontent.com/paperbab/one_click-Aria2/main/aria2.conf)
cls
:UI
echo ===============================================================================
echo 下载UI
echo 1.AriaNG【默认】
echo 2.不需要，谢谢
echo ===============================================================================
choice  /c 12 /n /m "请输入目标选项前的数字：" /d 1 /t 300
if %errorlevel%==1 (aria2c.exe https://ghproxy.com/https://github.com/mayswind/AriaNg/releases/download/1.3.6/AriaNg-1.3.6-AllInOne.zip & 7z e -oD:/aria2 AriaNG-1.3.6-AllInOne.zip)
if %errorlevel%==2 (goto tz)
cls
:tz
echo ===============================================================================
echo 是否拓展包
echo 1.我要下载【默认】
echo 2.不需要，谢谢
echo ===============================================================================
choice  /c 12 /n /m "请输入目标选项前的数字：" /d 1 /t 300
if %errorlevel%==2 (goto end1)
if %errorlevel%==1 (aria2c.exe https://ghproxy.com/https://github.com/paperbab/one_click-Aria2/releases/download/v1.1/Aria2-Ex.zip & 7z x -oD:/aria2 Aria2-Ex.zip)
cls
:end1
cls
title one_click_aria2
echo ===============================================================================
echo Aria2 制作完成
echo ===============================================================================
goto end

:end
pause