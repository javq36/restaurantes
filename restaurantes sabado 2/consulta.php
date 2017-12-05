<?php 
	include("conexion.php");
	$nombre=$_POST['nombre'];
	$sql = " SELECT * FROM restaurante where nombre_restaurante ='".$nombre."'";
	$result = $conexion->query($sql);
	//$row=$result->fetch_array();

	$datos = array();

	foreach ($result as $row) {
		$datos[]=$row;
	}
	echo "json_encode($row)";
 ?>