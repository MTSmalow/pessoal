<?php
require 'db_connect.php';

$username = 'aluno';
$password = 'etec@1234';
$hash = hash('sha256', $username . $password);

// Inserir o hash no banco de dados
$sql = "INSERT INTO users (hash) VALUES (?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$hash]);

echo "Usuário inserido com sucesso!";
?>
