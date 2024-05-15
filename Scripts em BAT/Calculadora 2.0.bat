@echo off
chcp 1252 > nul
chcp 65001 > nul
title Calculadora 2.0

:inicio
cls
echo Bem-vindo á Calculadora!
echo.
echo Escolha a operação desejada:
echo 1. Adição
echo 2. Subtração
echo 3. Multiplicação
echo 4. Divisão
echo 5. Sair
set /p opcao=Opção:

if "%opcao%"=="5" (
	echo Encerrando a Calculadora... Até outra hora.
	timeout /t 2 /nobreak > nul
	exit /b
)

set /p num1=Digite o Primeiro valor:
set /p num2=Digite o Segundo valor:


if "%opcao%"=="1" set /a resultado=num1+num2
if "%opcao%"=="2" set /a resultado=num1-num2
if "%opcao%"=="3" set /a resultado=num1*num2
if "%opcao%"=="4" (
	if "%num2%"=="0" (
		echo Não é possivel dividir por zero!
	) else (
		set /a resultado=num1/num2
	)
)

echo.
echo O Resultado é: %resultado%
echo.
pause
echo.
goto inicio