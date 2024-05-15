@echo off
chcp 1252 > nul
chcp 65001 > nul
color F0
title Meu Formulário

:loop
cls
echo.
echo ^ %date%
echo.
echo ^ 			   Preencha o Formulário
echo.

set /p "nome=Digite seu nome: "
set /p "idade=Digite sua idade: "
set /p "datadenascimento=Digite sua data de nascimento: "
set /p "cidade=Digite sua cidade: "

echo.
echo Seu nome é: %nome%
echo Sua idade é: %idade% anos
echo Sua data de nascimento é: %datadenascimento%
echo Sua cidade/estado é: %cidade%

echo.
echo nome: %nome% >> formulário.txt
echo idade: %idade% anos >> formulário.txt
echo data de nascimento: %datadenascimento% >> formulário.txt
echo cidade: %cidade% >> formulário.txt
echo. >> formulário.txt

echo salvo em um arquivo de texto
echo.

echo Deseja preencher outro formulário? (S/N)
set /p opcao=Opção:

if /i "%opcao%"=="N" (
    echo Encerrando o programa...
    timeout /t 2 /nobreak > nul
    exit /b
)

goto loop