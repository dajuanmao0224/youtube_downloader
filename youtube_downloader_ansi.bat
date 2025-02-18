@echo off
setlocal enabledelayedexpansion

:: 弹出输入框让用户输入URL
set /p URL="请输入URL: "

:: 如果URL为空，提示错误并退出
if "%URL%"=="" (
    echo 错误: 请输入有效的URL.
    pause
    exit /b
)

:: 运行下载
echo URL %URL% 开始下载
yt-dlp.exe  %URL%

:: 打开指定文件夹
start explorer "C:\execute"