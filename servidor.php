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
?>