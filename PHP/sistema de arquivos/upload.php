<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "arquivos";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

if (isset($_FILES['arquivo']) && $_FILES['arquivo']['error'] == 0) {
    $arquivo = $_FILES['arquivo'];
    $nome_arquivo = mysqli_real_escape_string($conn, $arquivo['name']);
    $tipo_arquivo = mysqli_real_escape_string($conn, $arquivo['type']);
    $tamanho_arquivo = $arquivo['size'];
    $tmp_nome = $arquivo['tmp_name'];

    $diretorio = "uploads/";

    if (!is_dir($diretorio)) {
        mkdir($diretorio, 0755, true);
    }

    $caminho_arquivo = $diretorio . basename($nome_arquivo);

    if (move_uploaded_file($tmp_nome, $caminho_arquivo)) {
        $sql = "INSERT INTO arquivos (nome, tipo, tamanho, caminho) VALUES ('$nome_arquivo', '$tipo_arquivo', '$tamanho_arquivo', '$caminho_arquivo')";

        if ($conn->query($sql) === TRUE) {
            echo "Arquivo enviado com sucesso!";
        } else {
            echo "Erro ao enviar o arquivo: " . $conn->error;
        }
    } else {
        echo "Falha ao mover o arquivo para o diretório de destino.";
    }
} else {
    echo "Nenhum arquivo enviado ou erro no upload.";
}

$conn->close();
?>
