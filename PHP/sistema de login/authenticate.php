<?php
session_start();
require 'db_connect.php'; // Arquivo para conexão ao banco de dados

// Verifica se os dados de username e password foram enviados
if (!isset($_POST['username'], $_POST['password'])) {
    header('Location: login.php?error=true');
    exit();
}

// Cria o hash de username e password combinados
$input_hash = hash('sha256', $_POST['username'] . $_POST['password']);

// Consulta no banco de dados para verificar se o hash existe
$sql = "SELECT * FROM users WHERE hash = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$input_hash]);

$user = $stmt->fetch();

if ($user) {
    // Se o hash for encontrado, inicia a sessão
    $_SESSION['username'] = $_POST['username'];
    header('Location: protected.php');
    exit();
} else {
    // Se o hash não for encontrado, redireciona com erro
    header('Location: login.php?error=true');
    exit();
}
?>

<!-- Criação do Hash Combinado: O hash('sha256', $username . $password) combina o nome de usuário e a senha em uma
  string única, depois aplica o hash sha256 para garantir a segurança.

Verificação no Banco de Dados: No authenticate.php, o sistema busca no banco de dados o hash gerado
 e verifica se ele existe. Se for encontrado, o login é bem-sucedido.

Armazenamento no Banco: O hash combinado é armazenado no campo hash da tabela users. -->
