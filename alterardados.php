<?php
	$dados = array();
	foreach($_REQUEST as $campo => $valor) {
		echo $campo . " => " . $valor . "<br>";
	}
?>