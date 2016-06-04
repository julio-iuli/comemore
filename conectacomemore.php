<?php
	header('Content-Type: text/html; charset=utf-8');
    try {
        $con = new PDO('mysql:host=10.0.0.102;dbname=comemore', 
		'root', '123456', 
		array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //echo "conexão ok <br><br>";
    } catch(PDOExcepetion $e) {
        echo "Erro: " . $e->getMessage();
    }
?>