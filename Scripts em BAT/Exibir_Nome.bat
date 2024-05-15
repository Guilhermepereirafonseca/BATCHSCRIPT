@echo off
chcp 1252 > nul
color A 
title Bem-vindo...

echo Seja Bem-vindo
echo.
set /p nome="Diga seu nome: "
timeout 2 /nobreak > nul

echo Olá %nome%, seja bem-vindo ao cmd :D!
echo.
pause

cls

echo Só isso mesmo até :D
echo.
pause
echo.
exit /b