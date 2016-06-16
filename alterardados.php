<?php
	include "conectacomemore.php";
	
	if(isset($_REQUEST['ds_data_nasc']) && $_REQUEST['ds_data_nasc'] == ""){$_REQUEST['ds_data_nasc'] = "0000-00-00";}
	if(isset($_REQUEST['ds_recomendacao_data_nasc']) && $_REQUEST['ds_recomendacao_data_nasc'] == ""){$_REQUEST['ds_recomendacao_data_nasc'] = "0000-00-00";}
	
	foreach($_REQUEST as $campo => $valor) {
		if($campo != "id_cliente"){
			$query = "UPDATE tb_cliente SET " . $campo . "='" . $valor . "' WHERE " . "id_cliente=" . $_REQUEST['id_cliente'] . ";";
			echo $query . "\n" ;
			$con->query($query);
		}
		
	}
?>