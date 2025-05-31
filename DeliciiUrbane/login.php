<?php
session_start();

if (!empty($_SESSION['logged_in'])) {
    header('Location: admin_rezervari.php');
    exit;
}

$adminUser = 'admin';
$adminHash = '$2y$10$rkUMmiLwyMfaln3SD1RD/em7MlCc4uxN7CX02B6jCzse/2dm2dDHG';

$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $u = $_POST['username'] ?? '';
    $p = $_POST['password'] ?? '';

    if ($u === $adminUser && password_verify($p, $adminHash)) {
        $_SESSION['logged_in'] = true;
        header('Location: admin_rezervari.php');
        exit;
    } else {
        $error = 'Username sau parolă incorecte.';
    }
}

?>
<!DOCTYPE html>
<html lang="ro">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <title>Login Admin</title>
  <style>
    html, body {
      height: 100%;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      background: #fdfaf6;
      font-family: 'Poppins', sans-serif;
    }
    .login-container {
      width: 320px;
      padding: 24px;
      background: #fff;
      border: 1px solid #ccc;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      box-sizing: border-box;
    }
    .login-container h2 {
      margin: 0 0 16px;
      font-family: 'Playfair Display', serif;
      color: #5e1c1c;
      text-align: center;
    }
    .login-container .error {
      color: #c00;
      text-align: center;
      margin-bottom: 12px;
    }
    .login-container label {
      display: block;
      margin-bottom: 4px;
      font-weight: bold;
    }
    .login-container input {
      width: 100%;
      padding: 8px;
      margin-bottom: 16px;
      border: 1px solid #aaa;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .login-container button {
      width: 100%;
      padding: 10px;
      background: #5e1c1c;
      color: #fff;
      border: none;
      border-radius: 4px;
      font-weight: bold;
      cursor: pointer;
      transition: background .3s;
    }
    .login-container button:hover {
      background: #9e4b4b;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login Admin</h2>

    <?php if ($error): ?>
      <div class="error"><?= htmlspecialchars($error) ?></div>
    <?php endif; ?>

    <form action="" method="post">
      <label for="user">Username:</label>
      <input type="text" id="user" name="username" required>

      <label for="pass">Parolă:</label>
      <input type="password" id="pass" name="password" required>

      <button type="submit">Autentifică-te</button>
    </form>
  </div>

</body>
</html>