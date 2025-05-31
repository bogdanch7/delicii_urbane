<?php
header('Content-Type: text/plain');
$conn = mysqli_connect('localhost','root','','delicii_urbane');
if (!$conn) { echo 'error'; exit; }
$nume    = mysqli_real_escape_string($conn, $_POST['nume']    ?? '');
$telefon = mysqli_real_escape_string($conn, $_POST['telefon'] ?? '');
$data    = mysqli_real_escape_string($conn, $_POST['data']    ?? '');
$ora     = mysqli_real_escape_string($conn, $_POST['ora']     ?? '');
$pers    = mysqli_real_escape_string($conn, $_POST['persoane']?? '');
$sql = "INSERT INTO rezervari (nume,telefon,data,ora,persoane) VALUES ('$nume','$telefon','$data','$ora','$pers')";
if (mysqli_query($conn,$sql)) echo 'ok';
else echo 'error';
mysqli_close($conn);
exit;
?>