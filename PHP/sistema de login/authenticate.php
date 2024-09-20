<?php
session_start();
require 'db_connect.php';

// Verifica se os campos obrigatórios foram enviados
if (!isset($_POST['login'], $_POST['password'])) {
    header('Location: login.php?error=true');
    exit();
}

$login = $_POST['login'];
$password = $_POST['password'];

// Gera os hashes para verificar
$hash_username_password = hash('sha256', $login . $password);
$hash_email_password = hash('sha256', $login . $password);

// Tenta fazer login usando o nome de usuário ou o email
$sql = "SELECT * FROM users WHERE (hash_username_password = ? OR hash_email_password = ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$hash_username_password, $hash_email_password]);

$user = $stmt->fetch();

if ($user) {
    // Se o usuário for encontrado, inicia a sessão
    $_SESSION['username'] = $user['username'];
    header('Location: protected.php');
    exit();
} else {
    // Se não for encontrado, redireciona com erro
    header('Location: login.php?error=true');
    exit();
}
?>

?>
<!-- 
Cadastro: Quando o usuário se cadastra, são gerados dois hashes:

hash_username_password: Combinação do nome de usuário com a senha.
hash_email_password: Combinação do email com a senha.
Ambos os hashes são armazenados no banco de dados.

Login: Durante o login, o sistema permite que o usuário insira tanto o nome de usuário quanto o email. Com base na
entrada fornecida, o hash correspondente é gerado e verificado no banco de dados.

Verificação de Hash: No authenticate.php, o sistema tenta encontrar o usuário no banco de dados usando os dois 
possíveis hashes (hash_username_password ou hash_email_password), garantindo que o login possa ser feito com base 
em qualquer um dos dois campos. 
-->