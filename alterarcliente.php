<?php header("Content-type: text/html; charset=utf-8") ?>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Alterar Cliente</title>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.mask.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">
		<link rel="stylesheet" href="css/w3.css">

<script>

$(document).ready(function(){
	//Retirando os requireds (PROVISÓRIO!!! RETIRAR)
	$("input").prop("required", false);
	
	// W3CSS
	$("a, button, input[type=submit], input[type=reset]").addClass("w3-btn w3-white w3-border w3-border-deep-purple w3-round-large");
	$("input:not(input[type=submit], input[type=reset])").addClass("w3-input");
	$("label").addClass("w3-label");
	$("h2").addClass("w3-container w3-deep-purple w3-animate-zoom").attr("align", "center");
	//$("form").addClass("w3-form");

	//Tratamento do autocomplete da busca do cliente
	carregarClientes();
	$("#inputbuscarcliente").autocomplete({
		change: function(event, ui){
			var id_cliente = ui.item.value;
			$("#hidden_id_cliente").val(id_cliente);
		},
		select: function(event, ui){
			event.preventDefault();
			$(this).val(ui.item.label);
		},
		focus: function(event, ui){
			event.preventDefault();
			$(this).val(ui.item.label);
		}
	});
	
	//tratamento das máscaras
	$("input.data").mask("99/99/9999");
		$("input.ddd").mask("99");
		$("input.tel").mask("9999-9999");		
		$("input.cel").mask("99999-9999");
        $("input.cpf").mask("999.999.999-99");
		$("input.cnpj").mask("99999.999/9999-99");
	
	//mudança do evento submit da busca
	$("#formbusca").submit(function(event){
		event.preventDefault();		
			var str = $("#formbusca").serialize();
			var id_cliente = $("#hidden_id_cliente").val();
			var cliente = carregarDadosCliente(id_cliente);
			
	});
	//mudança do evento submit dos dados
	$("#formdados").submit(function(event){
		event.preventDefault();
		if(confirm('confirma alteração?')){
			//alert(document.cookie1);
			var cliente = JSON.parse(document.cookie1);
			var endereco = JSON.parse(document.cookie2);
			$("input:not(#hidden_id_cliente1)").each(function(){
				if( ($(this).unmask().val() == cliente[$(this).attr('name')]) || ($(this).val() == endereco[$(this).attr('name')])){
					$(this).prop("disabled", true);
				}
			});
			
			if($("#inputlogradouro").prop("disabled") == false){
				$("#hiddenbairro").prop("disabled", false);
			}
			
			var dados = $("#formdados").unmask().serialize();
			var alterarDados = "alterardados.php?" + dados;
			//alert("DADOS QUE ESTÃO INDO PRO SERVIDOR: \n" + alterarDados);
			$.get(alterarDados, function(dados){
				//alert(dados); // RETIRE O COMENTÁRIO PARA VER AS QUERYS
				alert('dados alterados');
				location.reload();
			}); 
		}
	});
	
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

</script>


	</head>
	
	
	<body class="w3-container">
	
			<form class="w3-container w3-animate-opacity" id="formbusca">
				<fieldset>
					<legend>Buscar Cliente</legend>
					<input id="inputbuscarcliente" type="text" name="clientebuscado" /><br><br>
					<input id="hidden_id_cliente" type="hidden" name="id_cliente" />			
					<input id="submitbusca" type="submit" value="buscar dados do cliente" />
				</fieldset>
			</form>
		
	
			<form class="w3-container w3-animate-bottom" id="formdados" accept-charset="utf-8" action='#' method='GET'>
				<h2> Alterar Cliente</h2>
					<fieldset>
						<legend>Dados Pessoais</legend>
						Nome:
						<input id="ds_cliente" type='text' name='ds_cliente' maxlength='80' size='38' /><br><br>
						<input id="hidden_id_cliente1" type="hidden" name="id_cliente" />			
					  <div>
						<label for="opt-pf">Pessoa Física</label>
						<input id="opt-pf" checked="checked" type="radio" name='ds_pf_pj' value= "1" onClick="tipoPessoaSel(),apaga_CNPJ();" />&nbsp;
						<label for="opt-pj">Pessoa Jurídica</label>
						<input id="opt-pj" type="radio" name='ds_pf_pj' value = "0"  onClick="tipoPessoaSel(),apaga_CPF();" />
					  </div><br>
					  <div id="pf">
						<div>
						  <label for="cpf">CPF</label>
						  <input id="ds_cpf" class="cpf" type="text" name="ds_cpf" size="20" maxlength="14" required />
						</div>
					  </div>

					  <div id="pj" style="display: none;">

						<div>
						  <label for="cnpj">CNPJ</label>
						  <input id="ds_cnpj" class="cnpj" type="text" name="ds_cnpj" size="20" maxlength="16" value="00000000000000" />
						</div>
					  </div>
						<br>
					<label for="rg">RG:</label>
					<input id="ds_rg" type='text' name='ds_rg' maxlength='7' size='38' /><br><br>
					<label for="emissor_rg">Orgão Emissor</label>
					<input id="ds_emissor_rg"type='text' name='ds_emissor_rg' maxlength='2' size='38' /><br><br>
 
 
                    Telefone Residencial:
						<input id="ddd_res" class="ddd" type='text' name='ds_ddd_res' size='2'/>
						<input id="ds_telefone_res" class="tel" type='text' name='ds_telefone_res' maxlength='9' size='10' /><br><br>
					
					Telefone Celular:
						<input id="ddd_cel" class="ddd" type='text' name='ds_ddd_cel' size='2'/>
						<input id="ds_telefone_cel" class="cel" type='text' name='ds_telefone_cel' maxlength='9' size='10' /><br><br>						
													
											
					E-mail:
						<input id="ds_email" type='text' name='ds_email' maxlength='80' size='38' /><br><br>
					
					Data de Nascimento:
						<input id="ds_data_nasc" type='date' name='ds_data_nasc' maxlength='80' size='38' /><br><br>
					
                    </fieldset>
                    
					
					<?php include 'endereco.php'; ?>

					<fieldset>
						<legend>Recomendações</legend>
					Nome:
						<input id="ds_recomendacao_nome" type='text' name='ds_recomendacao_nome' maxlength='80' size='38' /><br><br>
					Data de Nascimento:
						<input id="ds_recomendacao_data_nasc" type='date' name='ds_recomendacao_data_nasc' maxlength='80' size='38' /><br><br>
                    </fieldset>
			
			
			<br>
			<center>
				<input type="submit" value="Salvar" />
				<input type="reset" value="Limpar Campos">
				<a href='principalcliente.html'>Voltar</a>
			</center>
		</form>	
	
	</body>
	
</html>