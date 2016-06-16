<?php
	include "conectacomemore.php";
	
	if(isset($_REQUEST['ds_data_nasc']) && $_REQUEST['ds_data_nasc'] == ""){$_REQUEST['ds_data_nasc'] = "0000-00-00";}
	if(isset($_REQUEST['ds_recomendacao_data_nasc']) && $_REQUEST['ds_recomendacao_data_nasc'] == ""){$_REQUEST['ds_recomendacao_data_nasc'] = "0000-00-00";}
	
	if(isset($_REQUEST['id_logradouro']) && $_REQUEST['id_logradouro'] !=""){
		$query = "UPDATE tb_cliente SET tb_logradouro_id_logradouro=".$_REQUEST['id_logradouro']." WHERE id_cliente=" . $_REQUEST['id_cliente'] . ";";
		echo $query . "\n" ;
		$con->query($query);
		unset($_REQUEST['id_logradouro']);
		unset($_REQUEST['ds_logradouro']);
		unset($_REQUEST['ds_cep']);
	} 
	if(isset($_REQUEST['ds_logradouro'])){
		$con->prepare('
						INSERT INTO tb_logradouro (ds)
		');
	}
	
	foreach($_REQUEST as $campo => $valor) {
		
		if($campo != "id_cliente"){
		$query = "UPDATE tb_cliente SET " . $campo . "='" . $valor . "' WHERE id_cliente=" . $_REQUEST['id_cliente'] . ";";
		echo $query . "\n" ;
		$con->query($query);
		}
	}
	
	// ele tá usando o ds_logradouro, em vez de ignorar...
?>