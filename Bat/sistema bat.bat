@echo off
title Sistema Multi-funcional
color 0b
chcp 65001 >nul

:login_screen
cls
echo.
echo ========================================
echo           SISTEMA DE LOGIN
echo ========================================
echo.
echo [L] - Login
echo [C] - Cadastrar nova conta
echo [X] - Excluir conta
echo [O] - Sair do programa
echo.
set /p opcao_login="Escolha uma opção: "

if /i "%opcao_login%"=="L" goto fazer_login
if /i "%opcao_login%"=="C" goto cadastrar_conta
if /i "%opcao_login%"=="X" goto excluir_conta
if /i "%opcao_login%"=="O" exit
goto login_screen

:cadastrar_conta
cls
echo.
echo ========================================
echo         CADASTRAR NOVA CONTA
echo ========================================
echo.
set /p novo_user="Digite o nome de usuário: "
set /p nova_senha="Digite a senha: "

echo %novo_user%:%nova_senha% >> login.txt
echo.
echo Conta cadastrada com sucesso!
pause
goto login_screen

:fazer_login
cls
echo.
echo ========================================
echo              FAZER LOGIN
echo ========================================
echo.
set /p usuario="Usuário: "
set /p senha="Senha: "

if not exist login.txt (
    echo Nenhuma conta cadastrada!
    pause
    goto login_screen
)

findstr /i "%usuario%:%senha%" login.txt >nul
if %errorlevel%==0 (
    goto menu_principal
) else (
    echo Login inválido!
    pause
    goto login_screen
)

:excluir_conta
cls
echo.
echo ========================================
echo           EXCLUIR CONTA
echo ========================================
echo.
set /p del_user="Digite o usuário a excluir: "
set /p del_senha="Digite a senha: "

if not exist login.txt (
    echo Nenhuma conta cadastrada!
    pause
    goto login_screen
)

findstr /i "%del_user%:%del_senha%" login.txt >nul
if %errorlevel%==0 (
    findstr /v /i "%del_user%:%del_senha%" login.txt > temp.txt
    move temp.txt login.txt >nul
    echo Conta excluída com sucesso!
) else (
    echo Usuário ou senha incorretos!
)
pause
goto login_screen

:menu_principal
cls
echo.
echo ========================================
echo           MENU PRINCIPAL
echo ========================================
echo Usuário logado: %usuario%
echo.
echo [P] - Pacote Office
echo [A] - Aplicativos do Windows
echo [S] - Serviços de Rede
echo [J] - Jogos
echo [C] - Cadastro de Clientes
echo [G] - Gerenciamento da Máquina
echo [E] - Encerrar sessão
echo [O] - Sair do programa
echo.
set /p opcao_main="Escolha uma opção: "

if /i "%opcao_main%"=="P" goto menu_office
if /i "%opcao_main%"=="A" goto menu_apps
if /i "%opcao_main%"=="S" goto menu_rede
if /i "%opcao_main%"=="J" goto menu_jogos
if /i "%opcao_main%"=="C" goto menu_clientes
if /i "%opcao_main%"=="G" goto menu_gerenciamento
if /i "%opcao_main%"=="E" goto login_screen
if /i "%opcao_main%"=="O" exit
goto menu_principal

:menu_office
cls
echo.
echo ========================================
echo           PACOTE OFFICE
echo ========================================
echo.
echo [1] - Word
echo [2] - Excel
echo [3] - PowerPoint
echo [4] - Access
echo [R] - Retornar
echo.
set /p opcao_office="Escolha uma opção: "

if "%opcao_office%"=="1" start winword.exe
if "%opcao_office%"=="2" start excel.exe
if "%opcao_office%"=="3" start powerpnt.exe
if "%opcao_office%"=="4" start msaccess.exe
if /i "%opcao_office%"=="R" goto menu_principal
goto menu_office

:menu_apps
cls
echo.
echo ========================================
echo        APLICATIVOS DO WINDOWS
echo ========================================
echo.
echo [1] - Painel de Controle
echo [2] - Teclado Virtual
echo [3] - Bloco de Notas
echo [4] - Gerenciador de Arquivos
echo [R] - Retornar
echo.
set /p opcao_apps="Escolha uma opção: "

if "%opcao_apps%"=="1" start control.exe
if "%opcao_apps%"=="2" start osk.exe
if "%opcao_apps%"=="3" start notepad.exe
if "%opcao_apps%"=="4" start explorer.exe
if /i "%opcao_apps%"=="R" goto menu_principal
goto menu_apps

:menu_rede
cls
echo.
echo ========================================
echo          SERVIÇOS DE REDE
echo ========================================
echo.
echo [1] - Navegar na Web
echo [2] - Testar Conexão de Rede
echo [3] - Obter IP da Máquina
echo [4] - Conteúdo no YouTube
echo [5] - Abrir o Google
echo [R] - Retornar
echo.
set /p opcao_rede="Escolha uma opção: "

if "%opcao_rede%"=="1" (
    set /p site="Digite o site (ex: www.google.com): "
    start http://%site%
)
if "%opcao_rede%"=="2" (
    echo Testando conexão...
    ping google.com -n 4
    pause
)
if "%opcao_rede%"=="3" (
    echo Obtendo IP da máquina...
    ipconfig | findstr "IPv4"
    pause
)
if "%opcao_rede%"=="4" start https://www.youtube.com
if "%opcao_rede%"=="5" start https://www.google.com
if /i "%opcao_rede%"=="R" goto menu_principal
goto menu_rede

:menu_jogos
cls
echo.
echo ========================================
echo              JOGOS
echo ========================================
echo.
echo [1] - Adivinhar o Número
echo [2] - Número Antecessor e Sucessor
echo [R] - Retornar
echo.
set /p opcao_jogos="Escolha uma opção: "

if "%opcao_jogos%"=="1" call adivinhar.bat
if "%opcao_jogos%"=="2" goto jogo_antecessor_sucessor
if /i "%opcao_jogos%"=="R" goto menu_principal
goto menu_jogos

:jogo_antecessor_sucessor
cls
echo.
echo ========================================
echo      ANTECESSOR E SUCESSOR
echo ========================================
echo.
set /a numero=(%random% %%99)+1
echo O número sorteado é: %numero%
echo.
set /p ant="Digite o antecessor: "
set /p suc="Digite o sucessor: "

set /a antecessor_correto=%numero%-1
set /a sucessor_correto=%numero%+1

if %ant%==%antecessor_correto% if %suc%==%sucessor_correto% (
    echo.
    echo Parabéns! Você acertou!
) else (
    echo.
    echo Resposta incorreta!
    echo Antecessor correto: %antecessor_correto%
    echo Sucessor correto: %sucessor_correto%
)
echo.
set /p jogar_novamente="Jogar novamente? [S/N]: "
if /i "%jogar_novamente%"=="S" goto jogo_antecessor_sucessor
goto menu_jogos

:menu_clientes
cls
echo.
echo ========================================
echo         CADASTRO DE CLIENTES
echo ========================================
echo.
echo [N] - Novo Cliente
echo [L] - Listar Clientes
echo [C] - Consultar Cliente
echo [R] - Retornar
echo.
set /p opcao_clientes="Escolha uma opção: "

if /i "%opcao_clientes%"=="N" goto novo_cliente
if /i "%opcao_clientes%"=="L" goto listar_clientes
if /i "%opcao_clientes%"=="C" goto consultar_cliente
if /i "%opcao_clientes%"=="R" goto menu_principal
goto menu_clientes

:novo_cliente
cls
echo.
echo ========================================
echo           NOVO CLIENTE
echo ========================================
echo.
set /p nome_cliente="Nome do cliente: "
set /p telefone_cliente="Telefone: "
set /p email_cliente="Email: "

echo Nome: %nome_cliente% - Telefone: %telefone_cliente% - Email: %email_cliente% >> clientes.txt
echo.
echo Cliente cadastrado com sucesso!
pause
goto menu_clientes

:listar_clientes
cls
echo.
echo ========================================
echo          LISTA DE CLIENTES
echo ========================================
echo.
if exist clientes.txt (
    type clientes.txt
) else (
    echo Nenhum cliente cadastrado.
)
echo.
pause
goto menu_clientes

:consultar_cliente
cls
echo.
echo ========================================
echo         CONSULTAR CLIENTE
echo ========================================
echo.
set /p busca_cliente="Digite o nome para buscar: "
if exist clientes.txt (
    findstr /i "%busca_cliente%" clientes.txt
    if %errorlevel%==1 echo Cliente não encontrado.
) else (
    echo Nenhum cliente cadastrado.
)
echo.
pause
goto menu_clientes

:menu_gerenciamento
cls
echo.
echo ========================================
echo      GERENCIAMENTO DA MÁQUINA
echo ========================================
echo.
echo [1] - Desligar a Máquina
echo [2] - Reiniciar a Máquina
echo [R] - Retornar
echo.
set /p opcao_gerencia="Escolha uma opção: "

if "%opcao_gerencia%"=="1" (
    echo Desligando o computador em 10 segundos...
    echo Pressione Ctrl+C para cancelar
    shutdown /s /t 10
)
if "%opcao_gerencia%"=="2" (
    echo Reiniciando o computador em 10 segundos...
    echo Pressione Ctrl+C para cancelar
    shutdown /r /t 10
)
if /i "%opcao_gerencia%"=="R" goto menu_principal
goto menu_gerenciamento