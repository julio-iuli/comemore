<?php

	header('Content-Type: text/html; charset=utf-8');

    function getEstadosJson() {
       include "conectacomemore.php";
       $res = $con->query("SELECT ds_estado as label, id_uf as value FROM tb_uf;");
       $estados = array();
       while($row = $res->fetch(PDO::FETCH_ASSOC)){
          $estados[] = $row;
       }
       return json_encode($estados);
    }

    function getCidadesJson($id_uf) {
        include 'conectacomemore.php';
        $stmt = $con->prepare('SELECT ds_cidade as label, id_cidade as value FROM tb_cidade where tb_uf_id_uf = :id_uf');
        $stmt->execute(array(':id_uf' => $id_uf));
        $cidades = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $cidades[] = $row;
        }
        
		return json_encode($cidades);
    }
    
    function getBairrosJson($id_cidade) {
        include 'conectacomemore.php';
        $stmt = $con->prepare('
        SELECT ds_bairro as label, id_bairro as value 
        FROM tb_bairro 
        WHERE tb_cidade_id_cidade = :id_cidade');
        //$id_cidade = intval($id_cidade);
        $stmt->execute(array(':id_cidade' => $id_cidade));
        $bairros = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $bairros[] = $row;
        }
        return json_encode($bairros);
    }
    
    function getLogradourosJson($id_bairro) {
        include 'conectacomemore.php';
        $stmt = $con->prepare('
        SELECT ds_logradouro as label, id_logradouro as value 
        FROM tb_logradouro
        WHERE tb_bairro_id_bairro = :id_bairro');
        $stmt->execute(array(':id_bairro' => $id_bairro));
        $logradouros = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $logradouros[] = $row;
        }
        return json_encode($logradouros);
	}
	
	function getCEP($id_logradouro) {
		include 'conectacomemore.php';
        $stmt = $con->prepare('
        SELECT ds_cep
        FROM tb_logradouro
        WHERE id_logradouro = :id_logradouro');
        $stmt->execute(array(':id_logradouro' => $id_logradouro));
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
		$ds_cep = $row['ds_cep'];
		return $ds_cep;
	}
	
	function getClientesJson() {
		include "conectacomemore.php";
		$res = $con->query("SELECT ds_cliente as label, id_cliente as value FROM tb_cliente;");
		$clientes = array();
		while($row = $res->fetch(PDO::FETCH_ASSOC)){
			$clientes[] = $row;
		}
       return json_encode($clientes);
	}
	
	function getDadosClienteJson($id_cliente) {
        include 'conectacomemore.php';
        $stmt = $con->prepare('
        SELECT * 
        FROM tb_cliente
        WHERE id_cliente = :id_cliente');
        $stmt->execute(array(':id_cliente' => $id_cliente));
        $dadosCliente = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $dadosCliente[] = $row;
        }
        $json = json_encode($dadosCliente);
		echo substr($json, 1, strlen($json) - 2);
		
	}


?>