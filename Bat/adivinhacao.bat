@echo off
title Adivinhe - Batch
color 0a

:inicio
set /a cont=5
set /a numero=(%random% %%50)+1

:adivinhe
cls
echo.
echo ------------------------
echo Digite um numero de 1 a 50
echo Tentativas restantes: %cont%
echo ------------------------
set /p tent=Seu palpite: 

if %cont% LEQ 0 (
    echo.
    echo ---------------------------------
    echo Voce perdeu!!!
    echo O numero certo era: %numero%
    echo ---------------------------------
    set /p resp=Quer jogar novamente? [S/N]: 
    if /i "%resp%"=="S" goto inicio
    exit
)

if %tent%==%numero% (
    echo.
    echo ---------------------------------
    echo Parabens! Voce acertou!!!
    echo ---------------------------------
    set /p resp=Quer jogar novamente? [S/N]: 
    if /i "%resp%"=="S" goto inicio
    exit
)

set /a cont=%cont%-1

if %tent% LSS %numero% (
    echo.
    echo O numero certo e MAIOR!
    pause
    goto adivinhe
)

if %tent% GTR %numero% (
    echo.
    echo O numero certo e MENOR!
    pause
    goto adivinhe
)