<?php

	$ds_tema = $_REQUEST['ds_tema']; 
	$ds_descricao = $_REQUEST['ds_descricao'];
	$ds_genero = $_REQUEST['ds_genero'];
	$ds_data_compra = $_REQUEST['ds_data_compra']; 
	$ds_preco = $_REQUEST['ds_preco']; 
	$tb_categoria_id_categoria = $_REQUEST['tb_categoria_id_categoria'];
	

	if($ds_data_compra == ''){$ds_data_compra = '0000-00-00';}
	
	include 'conectacomemore.php';
	
	$stmt = $con->prepare('
	insert into tb_tema (ds_tema, ds_descricao, ds_genero, ds_data_compra, ds_preco, tb_categoria_id_categoria)
	values
	(:ds_tema, :ds_descricao, :ds_genero, :ds_data_compra, :ds_preco, :tb_categoria_id_categoria)
	');
	try {
		$stmt->execute(array(
		':ds_tema' => $ds_tema, 
		':ds_descricao' => $ds_descricao, 
		':ds_genero' => $ds_genero, 
		':ds_data_compra' => $ds_data_compra, 
		':ds_preco' => $ds_preco, 
		':tb_categoria_id_categoria' => $tb_categoria_id_categoria
	));
	echo "<script type='text/javascript'>confirm('funcionou!');</script>";
	
	} catch (PDOException $e) {
		echo $e;
	}
	
	
?>