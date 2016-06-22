<html>
	<head>
		<meta charset='utf-8'/>
		<title>CADASTRAR TEMA</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
	
	<body class="w3-container w3-center">
		<form action='enviartema.php' accept-charset="utf-8" method='GET'>
			
			<center><h1>CADASTRAR TEMA</h1></center>
			<fieldset><br>
				<table>
					<tr>
					<td>Nome do Tema:</td>
					<td><input type='text' name='ds_tema' maxlength='80' size='38' /></td>		
					</tr>
					<tr>
					<td>Descrição:</td>
					<td><textarea rows="10" cols="40" name='ds_descricao'> </textarea> </td>	
					</tr>
					</tr>
					<td><br>Gênero:<br><br></td>
					<td><br>
						<input type='radio' name='ds_genero' value='M'>Masculino     
						<input type='radio' name='ds_genero'value='F'>Feminino     
						<input type='radio' name='ds_genero'value='U' checked>Unissex
					<br><br></td>
					</tr>
					<td>Data:</td>
					<td><input type="date" name="ds_data_compra"></td>
					</tr>
					<td>Preço:</td>
					<td><input type="text" name="ds_preco" maxlength='12' size='16'></td>
					</tr>
			<!--	<td>Adicionar imagem: </td>
					<td><input type="file" name="img_tema" value='Selecionar imagem'></td> -->
					</tr>
					</tr>
						<td>Categoria:</td>
							<td>
								<select name='tb_categoria_id_categoria'>
								
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
					</tr>						
				</table><br></fieldset><br>
				<center>
					<input id="submit" type='button' value='Salvar'/>
					<input id="reset" type='reset' value='Limpar Dados'/>
					<a href="principaltema.html">VOLTAR</a>
				</center>
		</form>
		
			
			
	
	</body>
	
	<link rel="stylesheet" href="css/w3.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){
			$("a, #submit, #reset, select, input").addClass("w3-btn w3-white w3-border w3-border-deep-purple w3-round-large w3-large");
			$("h1").addClass("w3-container w3-deep-purple w3-animate-zoom w3-xxxlarge").attr("align", "center");
			
			$("#submit").click(function(){
				event.preventDefault();
				//alert($("form").serialize());
				if(confirm('Enviar dados?')){
					$.get( "enviartema.php?" + $("form").serialize(), function(){
						alert('Dados enviados');
						location.reload();
					});
					
				}
			});
			
		});
	</script>

</html>