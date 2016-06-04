<?php

	$ds_nome = $_REQUEST['nome_tema']; 
	$ds_descricao = $_REQUEST['ds_tema'];
	$ds_genero = $_REQUEST['genero'];
	$ds_data_compra = $_REQUEST['data_tema']; 
	$ds_preco = $_REQUEST['preco']; 
	$tb_categoria_id_categoria = $_REQUEST['cat_tema'];
	
	include 'conectacomemore.php';
	
	$stmt = $con->prepare('
	insert into tb_tema (ds_nome, ds_descricao, ds_genero, ds_data_compra, ds_preco, tb_categoria_id_categoria)
	values
	(:ds_nome, :ds_descricao, :ds_genero, :ds_data_compra, :ds_preco, :tb_categoria_id_categoria)
	');
	try {
		$stmt->execute(array(
		':ds_nome' => $ds_nome, 
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