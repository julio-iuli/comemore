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
                                var id_uf = ui.item.value;
                                $("#hiddenestado").val(id_uf);
                                carregarCidades(id_uf);
                            }
                        });
                        
                    $("#inputcidade").autocomplete({
                            change: function(event, ui){
                                var id_cidade = ui.item.value;
                                 $("#hiddencidade").val(id_cidade);
                                carregarBairros(id_cidade);
                            }
                        
                    });
                    
                    $("#inputbairro").autocomplete({
                            change: function(event, ui){
                                var id_bairro = ui.item.value;
                                 $("#hiddenbairro").val(id_bairro);
                                carregarLogradouros(id_bairro);
                            }
                        
                    });
                    
                    $("#inputlogradouro").autocomplete({
                            change: function(event, ui){
                                var id_logradouro = ui.item.value;
                                $("#hiddenlogradouro").val(id_logradouro);
                            }
                        
                    });
                     
                });