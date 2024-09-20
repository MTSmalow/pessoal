<?php
require 'db_connect.php';

// Verifica se os campos obrigatórios foram enviados
if (!isset($_POST['username'], $_POST['email'], $_POST['password'])) {
    header('Location: register.php?error=Campos obrigatórios faltando.');
    exit();
}

$username = $_POST['username'];
$email = $_POST['email'];
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

// Gera os 2 hashes combinando a senha com o username e o email
$hash_username_password = hash('sha256', $username . $password);
$hash_email_password = hash('sha256', $email . $password);

// Insere os dados no banco de dados
$sql = "INSERT INTO users (username, email, hash_username_password, hash_email_password) VALUES (?, ?, ?, ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$username, $email, $hash_username_password, $hash_email_password]);

header('Location: login.php'); // Redireciona para a página de login
exit();
?>
