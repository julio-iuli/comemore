<?php header("Content-type: text/html; charset=utf-8") ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Cadastrar Cliente</title>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.mask.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">
		<link rel="stylesheet" href="css/w3.css">
		<script>

			$(document).ready(function(){
				
				//Retirando os requireds (PROVISÓRIO!!! RETIRAR)
				//$("input").prop("required", false);

					$("a, button, input[type=submit], input[type=reset]").addClass("w3-btn w3-white w3-border w3-border-blue w3-round-large");
					//$("input:not(input[type=submit], input[type=reset])").addClass("w3-input");
					$("label").addClass("w3-label");
					$("h2").addClass("w3-container w3-blue w3-animate-zoom").attr("align", "center");
					//$("form").addClass("w3-form");
				
				$("input.data").mask("99/99/9999");
					$("input.ddd").mask("(99)");
					$("input.tel").mask("9999-9999");		
					$("input.cel").mask("99999-9999");
					$("input.cpf").mask("999.999.999-99");
					$("input.cnpj").mask("99.999.999/9999-99");
					
				$("#enviardados").click(function(){
					if(confirm('Enviar dados?')){
						$(":input").unmask();
						var dadosCliente = "enviarcliente.php?" + $("form").serialize();
						alert(dadosCliente);
						alert($("form").val());
						if($.get(dadosCliente)){
							alert("Dados Enviados com sucesso");
							//location.reload();
						} else {
							alert("Falha no envio dos dados");
						}
					} else {
						alert('volte!');
					}
				});
				
			function apaga_CPF() {	
			var oBv = document.getElementById("cpf");	
			oBv.value = "";
			oBv.required = false;
			document.getElementById("cnpj").required = true;
			}	

			function apaga_CNPJ() {	
			var oBv = document.getElementById("cnpj");	
			oBv.value = "";
			oBv.required = false;
			document.getElementById("cpf").required = true;
			}	


			function tipoPessoaSel() {
			  var pf = document.getElementById("opt-pf").checked;
			  if (pf) {
				document.getElementById("pf").style.display = "block";
				document.getElementById("pj").style.display = "none";
				 
			  } else {
				document.getElementById("pf").style.display = "none";
				document.getElementById("pj").style.display = "block";
				
			  }
			}
				
			});



		</script>
	</head>
	<body class="w3-container w3-animate-bottom">
		<form id="formdados" accept-charset="utf-8" action='#' method='GET'>
			<h2> Cadastrar Cliente</h2>
			<fieldset>
				<legend>Dados Pessoais</legend>
					<label>Nome:</label>
					<input type='text' name='ds_cliente' maxlength='80' size='38' /><br><br>
				  <div>
					<label for="opt-pf">Pessoa Física</label>
					<input id="opt-pf" checked="checked" type="radio" name='ds_pf_pj' value= "1" onClick="tipoPessoaSel(),apaga_CNPJ();" />
					<label for="opt-pj">Pessoa Jurídica</label>
					<input id="opt-pj" type="radio" name='ds_pf_pj' value = "0"  onClick="tipoPessoaSel(),apaga_CPF();" />
				  </div><br>
				<div id="pf">
					<div>
					  <label for="cpf">CPF</label>
					  <input id="cpf" class="cpf" type="text" name="ds_cpf" size="20" maxlength="14" />
					</div>
				</div>
				<div id="pj" style="display: none;">
					<div>
					<label for="cnpj">CNPJ</label>
					<input id="cnpj" class="cnpj" type="text" name="ds_cnpj" size="20" maxlength="16" />
					</div>
				</div><br>
				<label for="rg">RG:</label>
				<input type='text' name='ds_rg' maxlength='7' size='38' /><br><br>
				
				<label for="emissor_rg">Orgão Emissor</label>
				<input type='text' name='ds_emissor_rg' maxlength='2' size='38' /><br><br>
				<label>Telefone Residencial:</label>
				<input id="ddd1" class="ddd" type='text' name='ds_ddd_res' size='2'/>
				<input id="tel" class="tel" type='text' name='ds_telefone_res' maxlength='9' size='10' /><br><br>
				<label>Telefone Celular:</label>
				<input id="ddd2" class="ddd" type='text' name='ds_ddd_cel' size='2'/>
				<input id="cel" class="cel" type='text' name='ds_telefone_cel' maxlength='9' size='10' /><br><br>						
				<label>E-mail:</label>
				<input type='text' name='ds_email' maxlength='80' size='38' /><br><br>
				<label>Data de Nascimento:</label>
				<input type='date' name='ds_data_nasc' maxlength='80' size='38' /><br><br>
				
			</fieldset>
			<?php include 'endereco.php'; ?>
			<fieldset>
				<legend>Recomendações</legend>
				<label>Nome:</label>
				<input type='text' name='ds_recomendacao_nome' maxlength='80' size='38' /><br><br>
				<label>Data de Nascimento:</label>
				<input type='date' name='ds_recomendacao_data_nasc' maxlength='80' size='38' value="0000-00-00"/><br><br>
			</fieldset><br>
			<center>
				<button id="enviardados">SALVAR</button>
				<input type="reset" value="Limpar Campos">
				<a href='principalcliente.html'>Voltar</a>
			</center>

			
		</form>	
	</body>
</html>