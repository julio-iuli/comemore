<html>
	<head>
		<script>

function apagar() {
    var txt;
    var r = confirm("Confirma exlusão?");
    if (r == true) {
        txt = "Exclusão efetuada com sucesso!";
    } else {
        event.preventDefault();
		txt = "Exclusão cancelada!";
    }
    alert(txt);
}
</script>
		<meta charset="UTF-8"/>
		<title>SELECIONAR TEMA</title>
		<link rel="stylesheet" href="css/w3.css">
	</head>
	
	<body>
		
		<h1>SELECIONAR TEMA</h1>
		
		<table class="w3-table-all"/>
			<thead>
				<td></td>
				<td>Nome do Tema</td>
				<td>Categoria</td>
				<td>Preço</td>
				<td>Comandos</td>
			</thead>
			<tbody>
				<?php
				include 'conectacomemore.php';
				
				if(@$_REQUEST['action'] == 'del'){
					$stmt = $con->prepare('DELETE FROM tb_tema WHERE id_tema = :id_tema ;');
					$id_tema = intval($_REQUEST['id_tema']);
					$stmt->execute(array(':id_tema' => $id_tema));
				}
				
				$res = $con->query('
				SELECT ds_tema, ds_categoria, ds_preco, id_tema, ds_descricao 
				FROM tb_tema 
				INNER JOIN tb_categoria 
				ON (tb_tema.tb_categoria_id_categoria = tb_categoria.id_categoria)
				ORDER BY ds_tema;');
				
				while($row = $res->fetch(PDO::FETCH_ASSOC)){
					echo '<tr>';
					
					echo '<td>';
					echo '<a href="selecionartema.php?action=del&id_tema=' . $row['id_tema'] . '"><img src="excluir.gif" onclick="apagar()" alt="excluir"/></a>';
					echo '<a href="alterartema.php?&id_tema=' . $row['id_tema'] . '"><img src="edit.png" width="20" height="20" alt="editar"/></a>';
					
					echo '</td>';

					
					
					echo '<td>' . $row["ds_tema"] . '</td>';
					echo '<td>' . $row["ds_categoria"] . '</td>';
					echo '<td>' . $row["ds_preco"]. '</td>';
					echo '<td>' . $row["ds_descricao"] . '</td>';								
					echo '</tr>';
				};
				
				
				?>
			</tbody>
		</table><br>
		<center><a href='principaltema.html'>VOLTAR<a></center>
	
	</body>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$("a").addClass("w3-btn w3-white w3-border w3-border-deep-purple w3-round-large w3-large");
			$("h1").addClass("w3-container w3-deep-purple w3-animate-zoom w3-xxxlarge").attr("align", "center");
		});
	</script>

	
</html>
