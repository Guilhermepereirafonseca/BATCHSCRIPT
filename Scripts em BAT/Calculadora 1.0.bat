@echo off
chcp 1252 > nul 
:: Windows-1252, Europa Ocidental (Windows)
chcp 65001 > nul 
::UTF-8 
color A 
title Calculadora 1.0

echo ^> Vamos praticar a equação Soma('+')
echo.
set /p valor1="Primeiro Valor:"
set /p valor2="Segundo Valor:"
timeout 1 /nobreak > nul

set /a resultado=%valor1% + %valor2%
echo.

echo ^> a Soma desses valores é %resultado%
echo.
pause 