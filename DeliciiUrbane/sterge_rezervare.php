<?php
header('Content-Type: application/json; charset=utf-8');

$host='localhost'; $db='delicii_urbane'; $user='root'; $pass='';
$pdo=new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4",$user,$pass,[
  PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION
]);

if(!empty($_POST['id'])){
  $stmt=$pdo->prepare("DELETE FROM rezervari WHERE id=?");
  $stmt->execute([$_POST['id']]);
  echo json_encode(['status'=>'ok']);
} else {
  echo json_encode(['status'=>'error','msg'=>'Lipsă ID']);
}
?>