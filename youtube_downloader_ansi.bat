@echo off
setlocal enabledelayedexpansion

:: ������������û�����URL
set /p URL="������URL: "

:: ���URLΪ�գ���ʾ�����˳�
if "%URL%"=="" (
    echo ����: ��������Ч��URL.
    pause
    exit /b
)

:: ��������
echo URL %URL% ��ʼ����
yt-dlp.exe  %URL%

:: ��ָ���ļ���
start explorer "C:\execute"