<?php header("Content-type: text/html; charset=utf-8") ?>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Cadastrar Cliente</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.mask.js"></script>
<script>

$(document).ready(function(){
	$("input.data").mask("99/99/9999");
        $("input.cep").mask("99.999-999");
		$("input.ddd").mask("(99)");
		$("input.tel").mask("9999-9999");		
		$("input.cel").mask("99999-9999");
        $("input.cpf").mask("999.999.999-99");
		$("input.cnpj").mask("99.999.999/9999-99");
	$("form").submit(function(){
		$(":input").unmask();
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
	
	
	<body>
			<form accept-charset="utf-8" action='enviarcliente.php' method='GET'>
				<h2> Cadastrar Clienteeeee</h2>
					<fieldset>
 <legend>Dados Pessoais</legend>
					Nome:
						<input type='text' name='ds_cliente' maxlength='80' size='38' /><br><br>
					
  <div>
    <label for="opt-pf">Pessoa Física</label>
    <input id="opt-pf" checked="checked" type="radio" name='ds_pf_pj' value= "1" onClick="tipoPessoaSel(),apaga_CNPJ();" />&nbsp;
    <label for="opt-pj">Pessoa Jurídica</label>
    <input id="opt-pj" type="radio" name='ds_pf_pj' value = "0"  onClick="tipoPessoaSel(),apaga_CPF();" />
  </div><br>
  <div id="pf">
    <div>
      <label for="cpf">CPF</label>
      <input id="cpf" class="cpf" type="text" name="ds_cpf" size="20" maxlength="14" required />
    </div>
  </div>

  <div id="pj" style="display: none;">

    <div>
      <label for="cnpj">CNPJ</label>
      <input id="cnpj" class="cnpj" type="text" name="ds_cnpj" size="20" maxlength="16" />
    </div>
  </div>
 <br>
	<label for="rg">RG:</label>
	<input type='text' name='ds_rg' maxlength='7' size='38' /><br><br>
    <label for="emissor_rg">Orgão Emissor</label>
	<input type='text' name='ds_emissor_rg' maxlength='2' size='38' /><br><br>
 
 
                    	Telefone Residencial:
						<input id="ddd1" class="ddd" type='text' name='ds_ddd_res' size='2'/>
						<input id="tel" class="tel" type='text' name='ds_telefone_res' maxlength='9' size='10' /><br><br>
					
					Telefone Celular:
						<input id="ddd2" class="ddd" type='text' name='ds_ddd_cel' size='2'/>
						<input id="cel" class="cel" type='text' name='ds_telefone_cel' maxlength='9' size='10' /><br><br>						
													
											
					E-mail:
						<input type='text' name='ds_email' maxlength='80' size='38' /><br><br>
					
					Data de Nascimento:
						<input type='date' name='ds_data_nasc' maxlength='80' size='38' /><br><br>
					
                    </fieldset>
                    
					
					<?php include 'endereco.php'; ?>

					<fieldset>
 <legend>Recomendações</legend>
					Nome:
						<input type='text' name='ds_recomendacao_nome' maxlength='80' size='38' /><br><br>
					Data de Nascimento:
						<input type='date' name='ds_recomendacao_data_nasc' maxlength='80' size='38' /><br><br>
                        </fieldset>
			
		<br>
        <center><input type="submit" value="Salvar" />
<input type="reset" value="Cancelar"></center>
</form>	
	
	</body>
	
</html>