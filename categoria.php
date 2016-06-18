<?php
header('Content-Type: text/html; charset=utf-8');
?>

<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<title>CATEGORIAS</title>
	</head>
	<body>
		<h1>CATEGORIAS</h1>
		<fieldset>
			<legend>INCLUIR NOVA CATEGORIA</legend>
				<form accept-charset='utf-8' action="categoria.php" method="GET">
					<input id="inputcategoria" type="text" name="ds_categoria">
					<br><br>
					<input type="submit" value="Salvar">
					<input id="hiddencategoria" type="hidden" name="mudacategoria" disabled>
				</form>
			<a href="principaltema.html">VOLTAR</a>
		</fieldset>
		
		<table border="1">
			<thead>
				<td></td>
				<td>CATEGORIA</td>
			</thead>
			<tbody>
				<?php
				include "conectacomemore.php";
					
				if(@$_REQUEST['action'] == 'del'){
					$stmt = $con->prepare('DELETE FROM tb_categoria WHERE id_categoria = :id_categoria ;');
					$id_categoria = intval($_REQUEST['id_categoria']);
					try {
						$stmt->execute(array(':id_categoria' => $id_categoria));
					} catch (PDOException $e) {
						echo '<script type="text/javascript">alert("' . $e->getMessage() . '");</script>';
					}
					
				}
				
				if(@$_REQUEST['ds_categoria']){
					$query = 'INSERT INTO tb_categoria (ds_categoria) value("' . $_REQUEST['ds_categoria'] . '");';
					try{
						$con->query($query);
					} catch (PDOException $e) {
						echo '<script type="text/javascript">alert("' . $e->getMessage() . '");</script>';
					}
					
				}
				
				$res = $con->query('
				SELECT ds_categoria, id_categoria 
				FROM tb_categoria
				ORDER BY ds_categoria
				');
				
				while($row = $res->fetch(PDO::FETCH_ASSOC)){
					echo '<tr>';
						echo '<td>';
							echo '<a href="categoria.php?action=del&id_categoria=' . $row['id_categoria'] . '"><img src="excluir.gif" onclick="apagar()" alt="excluir"/></a>';
							echo '<img src="edit.png" width="20" height="20" alt="editar" onclick="editar('. $row['id_categoria']. ')" /></a>';
						echo '</td>';
						echo '<td>';
							echo $row['ds_categoria'];
						echo '</td>';
						
					echo '</tr>';
				};
					
					
				?>
			</tbody>
		</table>
		
	</body>
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
		
		function editar(id_categoria){
			var novaDsCategoria = prompt('Entre com o novo nome');
			if(novaDsCategoria == null || novaDsCategoria == ''){
				alert('nome não foi mudado')
			} else {
				$("#hiddencategoria").prop("disabled", false).val(novaDsCategoria);
				novaDsCategoria = $("#hiddencategoria").serialize();
				var requisicao = 'servidor.php?' + novaDsCategoria + '&id_categoria=' + id_categoria;
				$.get(requisicao, function(){
					alert('nome mudado com sucesso!');
					location.reload();
				});
			}
		}
		
	</script>