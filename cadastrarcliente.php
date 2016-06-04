<?php header("Content-type: text/html; charset=utf-8") ?>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Cadastrar Cliente</title>

	</head>
	
	
	<body>
			<form accept-charset="utf-8" action='enviarcliente.php' method='GET'>
				<h2> Cadastrar Cliente</h2>
					
					Nome:
						<input type='text' name='ds_nome' maxlength='80' size='38' /><br><br>
					
					Telefone Residencial:
						<input type='text' name='ds_ddd' maxlength='2' size='2' />
						<input type='text' name='ds_telefone_res' maxlength='9' size='10' /><br><br>
					
					Telefone Celular:
						<input type='text' name='ds_ddd' maxlength='2' size='2' />
						<input type='text' name='ds_telefone_cel' maxlength='9' size='10' /><br><br>						
					
					Pessoa Física ou Jurídica:									
						<select form name='ds_pf_pj'>
								<option value='1'> Pessoa Física <br><br></option> 
								<option value='2'>Pessoa Jurídica <br><br></option> 							
						</select>							
								CPF:<input type='text' name='ds_cpf' maxlength='11' size='15'/>
								CNPJ:<input type='text' name='ds_cnpj' maxlength='14' size='15'/><br><br>
					
					E-mail:
						<input type='text' name='ds_email' maxlength='80' size='38' /><br><br>
					
					Data de Nascimento:
						<input type='date' name='ds_data_nasc' maxlength='80' size='38' /><br><br>
					
					<h4>Endereço</h4>
					
					<?php include 'endereco.php'; ?>

					
					<h4>Recomendações</h4>
					Nome:
						<input type='text' name='ds_recomendacao_nome' maxlength='80' size='38' /><br><br>
					Data de Nascimento:
						<input type='date' name='ds_recomendacao_data_nasc' maxlength='80' size='38' /><br><br>
			</form>
			
			
	
	</body>
	
</html>