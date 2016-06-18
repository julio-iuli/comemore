function completeEndereco(ds_cep) {	
	var buscarEndereco = "servidor.php?cliente_ds_cep=" + ds_cep;
		
		$.get(buscarEndereco, function(data){
			if(data != ""){
				var endereco = JSON.parse(data);
				
				$("#inputestado").val(endereco.ds_estado);
				$("#hiddenestado").val(endereco.id_uf);
				$("#inputcidade").val(endereco.ds_cidade);
				$("#hiddencidade").val(endereco.id_cidade);
				$("#inputbairro").val(endereco.ds_bairro);
				$("#hiddenbairro").val(endereco.id_bairro);
				$("#inputlogradouro").val(endereco.ds_logradouro);
				$("#hiddenlogradouro").val(endereco.id_logradouro);
				$("#inputcep").val(endereco.ds_cep);
				//$("#inputcep").mask("99.999-999");
				$("#inputcomplemento").focus();
				
				//carregarCidades(endereco.id_uf);
				//carregarBairros(endereco.id_cidade);
				//carregarLogradouros(endereco.id_bairro);
				
			} else {
				$("#inputestado").val("");
				$("#hiddenestado").val("");
				$("#inputcidade").val("");
				$("#hiddencidade").val("");
				$("#inputbairro").val("");
				$("#hiddenbairro").val("");
				$("#inputlogradouro").val("");
				$("#hiddenlogradouro").val("");
			}
		});
			

}

function carregarDadosCliente(id_cliente){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
			var cliente = JSON.parse(ajax.responseText);
						
			$("#ds_cliente").val(cliente.ds_cliente);
			$("#hidden_id_cliente1").val(cliente.id_cliente);
			$("#ddd_res").val(cliente.ds_ddd_res);
			$("#ddd_cel").val(cliente.ds_ddd_cel);
			$("#ds_telefone_res").val(cliente.ds_telefone_res);
			$("#ds_telefone_cel").val(cliente.ds_telefone_cel);
			$("#ds_rg").val(cliente.ds_rg);
			$("#ds_cpf").val(cliente.ds_cpf);
			$("#ds_emissor_rg").val(cliente.ds_emissor_rg);
			$("#ds_email").val(cliente.ds_email);
			$("#ds_data_nasc").val(cliente.ds_data_nasc);
			$("#ds_recomendacao_nome").val(cliente.ds_recomendacao_nome);
			$("#ds_recomendacao_data_nasc").val(cliente.ds_recomendacao_data_nasc);
						
			//TESTANDO PF-PJ
			if(cliente.ds_pf_pj == 0){
				$("#opt_pj").attr("checked", true);
			}
			//ENDEREÇO => TRATAMENTO
			$("#inputcomplemento").val(cliente.ds_end_complemento);
			
			var buscaEndereco = "servidor.php?cliente_id_logradouro=" + cliente.tb_logradouro_id_logradouro;
			$.get(buscaEndereco, function(data){
				var endereco = JSON.parse(data);
				

				
				$("#inputestado").val(endereco.ds_estado);
				$("#hiddenestado").val(endereco.id_uf);
				$("#inputcidade").val(endereco.ds_cidade);
				$("#hiddencidade").val(endereco.id_cidade);
				$("#inputbairro").val(endereco.ds_bairro);
				$("#hiddenbairro").val(endereco.id_bairro);
				$("#inputlogradouro").val(endereco.ds_logradouro);
				$("#hiddenlogradouro").val(endereco.id_logradouro);
				$("#inputcep").val(endereco.ds_cep);
				$("#inputcep").mask("99.999-999");
				
				carregarCidades(endereco.id_uf);
				carregarBairros(endereco.id_cidade);
				carregarLogradouros(endereco.id_bairro);
				
				document.cookie2 = "";
				document.cookie2 = data;
			});
			
			document.cookie1 = "";
			document.cookie1 = ajax.responseText;
			
		}
	};
	ajax.open("GET", "servidor.php?cliente="+id_cliente, true);
	ajax.send();
}

function carregarClientes(){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
			$("#inputbuscarcliente").autocomplete("option", "source", JSON.parse(ajax.responseText));
		}
	};
	ajax.open("GET", "servidor.php?clientes=true", true);
	ajax.send();
}

function carregarEstados(){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
			$("#inputestado").autocomplete("option", "source", JSON.parse(ajax.responseText));
		}
	};
	ajax.open("GET", "servidor.php?estados=true", true);
	ajax.send();
}

function carregarCidades(id_uf){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
			$("#inputcidade").autocomplete("option", "source", JSON.parse(ajax.responseText));
		}
	};
	//alert("servidor.php?id_uf="+id_uf);
	ajax.open("GET", "servidor.php?id_uf="+id_uf, true);
	ajax.send();
}

function carregarBairros(id_cidade){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
		   $("#inputbairro").autocomplete("option", "source", JSON.parse(ajax.responseText));
		}
	};
	//alert("servidor.php?id_cidade="+id_cidade);
	ajax.open("GET", "servidor.php?id_cidade="+id_cidade, true);
	ajax.send();
}


function carregarLogradouros(id_bairro){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
		   $("#inputlogradouro").autocomplete("option", "source", JSON.parse(ajax.responseText));
		}
	};
	//alert("servidor.php?id_uf="+id_uf);
	ajax.open("GET", "servidor.php?id_bairro="+id_bairro, true);
	ajax.send();
}

function carregarCep(id_logradouro){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){						
		if (ajax.readyState == 4 && ajax.status == 200){
			$("#inputcep").attr("value", ajax.responseText).attr("readonly", true);
		}							
	};
	ajax.open("GET", "servidor.php?id_logradouro="+id_logradouro, true);
	ajax.send();
}
