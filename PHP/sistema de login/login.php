<?php
session_start();

if (isset($_SESSION['username'])) {
    header('Location: protected.php');
    exit();
}

if (isset($_GET['error'])) {
    echo "<p style='color: red;'>Login inválido!</p>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            color: aliceblue;
            background-color: rgb(34, 37, 38);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: rgb(28, 31, 32);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            border-radius: 20px;
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border-radius: 10px;
            background-color: black;
            color: aliceblue;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 10px;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        div{
          margin-left: 30px;  
          margin-right: 30px;
        }
        .title{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2 class="title">Login</h2>
    <form action="authenticate.php" method="POST">
    <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" name="username" required>
    </div>
        
    <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" name="password" required>
    </div>
        
    <div class="form-group">
        <button type="submit">Login</button>
    </div>
    </form>
</div>
</body>
</html>
