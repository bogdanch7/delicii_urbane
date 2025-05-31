<?php
$db = new PDO('mysql:host=localhost;dbname=delicii_urbane;charset=utf8', 'root', '');

if (isset($_GET['sterge'])) {
    $id = (int) $_GET['sterge'];
    $stmt = $db->prepare("DELETE FROM rezervari WHERE id = ?");
    $stmt->execute([$id]);
    header("Location: admin_rezervari.php");
    exit;
}

session_start();
if (empty($_SESSION['logged_in'])) {
    header('Location: login.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="ro">
<head>
  <meta charset="UTF-8">
  <title>Panou Admin – Rezervări</title>
  <style>
    table { border-collapse: collapse; width: 100%; }
    th, td { border: 1px solid #999; padding: 8px; text-align: left; }
    th { background: #eee; }
    a.delete { color: red; text-decoration: none; }
    a.logout  { display: inline-block; margin-bottom: 1em; }
  </style>
</head>
<body>
  <h1>Panou Admin – Rezervări</h1>

  <p><a href="logout.php" class="logout">🔒 Logout</a></p>

  <table>
    <tr>
      <th>ID</th><th>Nume</th><th>Telefon</th><th>Data</th>
      <th>Ora</th><th>Persoane</th><th>Acțiuni</th>
    </tr>
<?php

foreach($db->query("SELECT * FROM rezervari ORDER BY id DESC") as $r) {
    echo "<tr>
      <td>{$r['id']}</td>
      <td>".htmlspecialchars($r['nume'])."</td>
      <td>".htmlspecialchars($r['telefon'])."</td>
      <td>{$r['data']}</td>
      <td>{$r['ora']}</td>
      <td>{$r['persoane']}</td>
      <td>
        <a
          class='delete'
          href='?sterge={$r['id']}' 
          onclick=\"return confirm('Ștergi rezervarea lui ".addslashes($r['nume'])."?');\">
          Șterge
        </a>
      </td>
    </tr>";
}
?>
  </table>
</body>
</html>