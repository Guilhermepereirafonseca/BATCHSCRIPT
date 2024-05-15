:: /i = aceita maiusculas e minusculas

@echo off
chcp 1252 > nul
chcp 65001 > nul
mode 69,20
title Criação de Pastas

:loop
cls
echo Digite o nome da pasta que deseja criar (para sair digite "sair"):
set /p nome_pasta=Nome da pasta:

if /i "%nome_pasta%"=="sair" (
	echo Encerrando o programa...
	timeout /t 2 /nobreak > nul
	exit /b
)

if not exist "%nome_pasta%" (
	mkdir "%nome_pasta%"
	echo Pasta "%nome_pasta%" criada com sucesso!
) else (
	echo A pasta "%nome_pasta%" já existe.
)

timeout /t 2 /nobreak > nul
goto loop