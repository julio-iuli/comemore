$("document").ready(function(){
	
	carregarEstados();
	
	//CONFIGURAÇÃO DE TODOS OS SELETORES, PARA APRESENTAREM AO USUÁRIO OS "ds" E NÃO OS "id"
	$("#inputbairro, #inputcidade, #inputestado, #inputlogradouro").autocomplete({
		select: function(event, ui){
			event.preventDefault();
			$(this).val(ui.item.label);
		},
		focus: function(event, ui){
			event.preventDefault();
			$(this).val(ui.item.label);
		},                        
	});
	
	//CONFIGURAÇÃO DO DINAMISMO DOS AUTOCOMPLETE
	$("#inputestado").autocomplete({
			change: function(event, ui){
				$("#inputcidade, #inputbairro, #inputlogradouro, #inputcep, #inputcomplemento").val("");
				$("#hiddencidade, #hiddenbairro, #hiddenlogradouro").val("");
				var id_uf = ui.item.value;
				$("#hiddenestado").val(id_uf);								
				carregarCidades(id_uf);
			}
		}).change( function(){
			$("#inputcidade, #inputbairro, #inputlogradouro, #inputcep, #inputcomplemento").val("");
			$("#hiddencidade, #hiddenbairro, #hiddenlogradouro").val("");
		});
		
	$("#inputcidade").autocomplete({
			change: function(event, ui){
				var id_cidade = ui.item.value;
				$("#hiddencidade").val(id_cidade);
				$("#inputbairro, #inputlogradouro, #inputcep, #inputcomplemento").val("");
				$("#hiddenbairro, #hiddenlogradouro").val("");
				carregarBairros(id_cidade);
			}                        
	}).change( function(){
			$("#inputbairro, #inputlogradouro, #inputcep, #inputcomplemento").val("");
			$("#hiddenbairro, #hiddenlogradouro").val("");
		});
	
	$("#inputbairro").autocomplete({
			change: function(event, ui){
				var id_bairro = ui.item.value;
				 $("#hiddenbairro").val(id_bairro);
				 $("#inputlogradouro, #inputcep, #inputcomplemento").val("");
				 $("#hiddenlogradouro").val("");
				carregarLogradouros(id_bairro);
			}
		
	});
	
	$("#inputlogradouro").autocomplete({
			change: function(event, ui){
				$("#inputcomplemento").val("");
				$("#inputcep").attr("value", "").attr("readonly", false);
				var id_logradouro = ui.item.value;								
				$("#hiddenlogradouro").val(id_logradouro);
				carregarCep(id_logradouro);
			}
		
	}); /*.focus( function(){
		$("#inputcep").attr("value", "").attr("readonly", false); */
	
	

	 
});