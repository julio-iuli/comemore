<?php
	include "conectacomemore.php";
	foreach($_REQUEST as $campo => $valor) {
		if($campo != "id_cliente"){
			$query = "UPDATE tb_cliente SET " . $campo . "='" . $valor . "' WHERE " . "id_cliente=" . $_REQUEST['id_cliente'] . ";";
			echo $query . "\n" ;
			$con->query($query);
		}
		
	}
?>