<?php
header('Content-Type: application/json');
$conn = mysqli_connect('localhost','root','','delicii_urbane');
if (!$conn) {
  echo json_encode(['status'=>'error']);
  exit;
}
$nume    = mysqli_real_escape_string($conn, $_POST['nume']    ?? '');
$email   = mysqli_real_escape_string($conn, $_POST['email']   ?? '');
$telefon = mysqli_real_escape_string($conn, $_POST['telefon'] ?? '');
$mesaj   = mysqli_real_escape_string($conn, $_POST['mesaj']   ?? '');
$sql = "
  INSERT INTO mesaje_contact (nume,email,telefon,mesaj)
  VALUES ('$nume','$email','$telefon','$mesaj')
";
if (mysqli_query($conn,$sql)) echo json_encode(['status'=>'ok']);
else                           echo json_encode(['status'=>'error']);
mysqli_close($conn);
exit;
?>