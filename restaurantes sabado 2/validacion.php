<?php
include("conexion.php");
$usuario=$_POST['usuario'];
$password=$_POST['password'];
$sql=" SELECT * FROM usuario where nombre_usuario ='".$usuario."' AND password='".$password."'";
$result = $conexion->query($sql);
$row=$result->fetch_array();
  if($row[0]=$password){
      echo"Bienvenido";
  }elseif ($row[0]!=$password) {
    echo "password incorrecto";
  }
$conexion->close();
?>