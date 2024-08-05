@chcp 65001 > nul
@echo off
color fd
title Menu

:menu
cls

echo.
echo   1) Ninite
echo   2) powershell
echo   3) cmd
echo   4) Sair
echo.

choice /c "1234" /n /m "Digite sua opção: "
goto opcao%errorlevel%

:opcao1
start "" "https://ninite.com/"
goto menu

:opcao2
start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
goto menu

:opcao3
start C:\Windows\System32\cmd.exe
goto menu

:opcao4
exit /b
