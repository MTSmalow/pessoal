<?php
require 'db_connect.php';

// Verifica se os campos obrigatórios foram enviados
if (!isset($_POST['username'], $_POST['email'], $_POST['phone'], $_POST['password'])) {
    header('Location: register.php?error=Campos obrigatórios faltando.');
    exit();
}

$username = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];

// Verifica se o email já existe
$sql = "SELECT * FROM users WHERE email = ?";
$stmt = $pdo->prepare($sql);
$stmt->execute([$email]);
$user = $stmt->fetch();

if ($user) {
    header('Location: register.php?error=O email já está em uso.');
    exit();
}

// Cria o hash com a combinação do username e password
$hash = hash('sha256', $username . $password);

// Insere os dados do usuário no banco de dados
$sql = "INSERT INTO users (username, email, phone, hash) VALUES (?, ?, ?, ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$username, $email, $phone, $hash]);

header('Location: login.php'); // Redireciona para a página de login
exit();
?>
