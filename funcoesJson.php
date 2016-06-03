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

?>