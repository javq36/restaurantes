<?php 
		$servidor = "localhost";
		$usuario = "id3393533_id3393533_javq36";
		$clave = "j_villamizar11";
		$dbdatos = "id3393533_restaurantes";
		$conexion = new mysqli($servidor,$usuario,$clave,$dbdatos);
		if (!$conexion)
		{
			echo ("ERROR !!! No se puede abrir la DB <b>$dbdatos</b>");
			exit();
		}else{
		    //echo "Conecto!";
		}
 ?>