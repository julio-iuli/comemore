function carregarDadosCliente(id_cliente){
	var ajax;
	ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function(){
		if (ajax.readyState == 4 && ajax.status == 200){
			var cliente = JSON.parse(ajax.responseText);
			
			$("#ds_cliente").val(cliente.ds_cliente);
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
			//ENDEREÇO => TRATAR
			$("#ds_end_complemento").val(cliente.ds_end_complemento);
			$("#ds_tb_logradouro_id_logradouro").val(cliente.ds_tb_logradouro_id_logradouro);
			
			document.cookie = "";
			document.cookie = ajax.responseText;
			
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
