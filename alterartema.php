<?php
header('Content-Type: text/html; charset=utf-8');

include "conectacomemore.php";

	if (@$_REQUEST['ds_tema'] != '') {
		
		$ds_tema = $_REQUEST['ds_tema'];
		$ds_descricao = $_REQUEST['ds_descricao']; 
		$ds_genero = $_REQUEST['ds_genero'];
		$ds_data_compra = $_REQUEST['ds_data_compra'];
		$ds_preco = $_REQUEST['ds_preco'];
		$tb_categoria_id_categoria = $_REQUEST['tb_categoria_id_categoria'];
		$id_tema = $_REQUEST['id_tema'];

		$id_tema = intval($id_tema);
		
		if($ds_data_compra == ''){$ds_data_compra = '0000-00-00';}
		
		$stmt = $con->prepare('
		UPDATE tb_tema
		SET ds_tema = :ds_tema, ds_descricao = :ds_descricao, ds_genero = :ds_genero, ds_data_compra = :ds_data_compra, 
		ds_preco = :ds_preco, tb_categoria_id_categoria = :tb_categoria_id_categoria
		WHERE id_tema = :id_tema;
		');
		
		try {
		$stmt->execute(array(
		'id_tema' => $id_tema,
		':ds_tema' => $ds_tema,
		':ds_descricao' => $ds_descricao,
		':ds_genero' => $ds_genero,
		':ds_data_compra' => $ds_data_compra,
		':ds_preco' => $ds_preco,
		':tb_categoria_id_categoria' => $tb_categoria_id_categoria,		
		));
		echo "<script type='text/javascript'>alert('Tema atualizado com sucesso!');</script>";
		} catch (PDOException $e) {
			echo $e;
		}
	}
	
	$id_tema = $_REQUEST['id_tema'];
	$id_tema = intval($id_tema);
	
	$stmt = $con->prepare('
	SELECT ds_tema, ds_descricao, ds_genero, ds_data_compra, ds_preco, tb_categoria_id_categoria, id_tema
	FROM tb_tema
	WHERE id_tema = :id_tema
	');
	
	$stmt->execute(array(':id_tema' => $id_tema));
	$tema = $stmt->fetch(PDO::FETCH_ASSOC);
	
    ?>
	
<html lang="pt-BR">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Formulario Teste</title>

	</head>
	<body>
			<form action='alterartema.php' accept-charset="utf-8" method='GET'>
				<h1>ALTERAR TEMA</h1>
					<table>
						<tr>
						<td>Nome do Tema:</td>
						<td><input type='text' name='ds_tema' maxlength='80' size='38' value='<?php echo $tema['ds_tema'];?>'/></td>		
						</tr>
						<tr>
						<td>Descrição:</td>
						<td><textarea rows="10" cols="40" name='ds_descricao' ><?php echo $tema['ds_descricao'];?></textarea> </td>	
						</tr>
						</tr>
						<td>Gênero:</td>
						<td>
							<input type='radio' name='ds_genero' value="M"<?php if($tema['ds_genero']=='M') {echo 'checked';};?>>Masculino     
							<input type='radio' name='ds_genero' value="F"<?php if($tema['ds_genero']=='F') {echo 'checked';};?>>Feminino     
							<input type='radio' name='ds_genero' value="U"<?php if($tema['ds_genero']=='U') {echo 'checked';};?>>Unissex
						</td>
						</tr>
						<td>Data:</td>
						<td><input type="date" name="ds_data_compra" value='<?php echo $tema['ds_data_compra'];?>'></td>
						</tr>
						<td>Preço:</td>
						<td><input type="text" name="ds_preco" maxlength='12' size='16' value='<?php echo $tema['ds_preco'];?>'></td>
						</tr>
					<!--	<td>Adicionar imagem: </td>
						<td><input type="file" name="img_tema" value='Selecionar imagem'></td> -->
						</tr>
						</tr>
							<td>Categoria:</td>
								<td>
									<select id="sel" name='tb_categoria_id_categoria'>
										<?php  
											header("Content-type: text/html; charset=utf-8");
											include "conectacomemore.php";
											$res = $con->query("SELECT id_categoria, ds_categoria FROM tb_categoria;");
											while($row = $res->fetch(PDO::FETCH_ASSOC)){
												echo '<option value="'. $row['id_categoria'] . '">' . $row['ds_categoria'] . '</option>';
											}
										?>
									</select>
								</td>
								<script type='text/javascript'>
								<?php echo 'var cat = ' . $tema['tb_categoria_id_categoria'] . ';'; ?>
								var escolhas = document.getElementById("sel").options;
								for (var i = 0; i < escolhas.length ; i++){
									if (escolhas[i].value == cat) {escolhas[i].selected = true;}
								}
								</script>
						</tr>						
					</table><br>
					<input type='hidden' name='id_tema' value= <?php echo $id_tema;?>/>
					<input type='submit' value='Salvar'/>
					<a href='principaltema.html'><input type='button' value='Voltar'/><a>
			</form>
			
			
	
	</body>
	
	<link rel="stylesheet" href="css/w3.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$("a, #submit, #reset, select, input").addClass("w3-btn w3-white w3-border w3-border-blue w3-round-large w3-large");
			$("h1").addClass("w3-container w3-blue w3-animate-zoom w3-xxxlarge").attr("align", "center");
		});
	</script>
	
	
	
	
	
	
	</html>
