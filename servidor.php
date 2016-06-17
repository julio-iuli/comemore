<?php
	header('Content-Type: text/html; charset=utf-8');
    include 'funcoesJson.php';
    
    if(@$_REQUEST['estados'] == 'true'){
        echo getEstadosJson();
    }
    
    if(@$_REQUEST['id_uf']){
        echo getCidadesJson($_REQUEST['id_uf']);
    }
    
    if(@$_REQUEST['id_cidade']){
        //echo "<script type='text/javascript'>alert(" . $_REQUEST[id_cidade] . ") </script>;";
        echo getBairrosJson($_REQUEST['id_cidade']);
    }
    
    if(@$_REQUEST['id_bairro']){
        echo getLogradourosJson($_REQUEST['id_bairro']);
    }
	
	if(@$_REQUEST['id_logradouro']){
		echo getCep($_REQUEST['id_logradouro']);
    }
	
	if(@$_REQUEST['clientes'] == 'true'){
		echo getClientesJson();
    }
	
	if(@$_REQUEST['cliente']){
		echo getDadosClienteJson($_REQUEST['cliente']);
	}
	
	if(@$_REQUEST['cliente_id_logradouro']){
		echo getEnderecoPorIdLogradouro($_REQUEST['cliente_id_logradouro']);
	}
	
	if(@$_REQUEST['cliente_ds_cep']){
		echo getEnderecoPorDsCep($_REQUEST['cliente_ds_cep']);
	}
	
	if(@$_REQUEST['excluir_id_cliente']){
		echo excluirCliente($_REQUEST['excluir_id_cliente']);
	}
	
	if(@$_REQUEST['mudacategoria']) {
		include 'conectacomemore.php';
		$query = 'UPDATE tb_categoria SET ds_categoria = "' . $_REQUEST['mudacategoria'] . '" WHERE id_categoria = ' . $_REQUEST['id_categoria'] . ';';
		$con->query($query);
		
	}
	
?>