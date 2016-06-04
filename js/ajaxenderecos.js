

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
							$("#inputcep").attr("value", ajax.responseText).prop("disabled", true);
						}							
                    };
                    ajax.open("GET", "servidor.php?id_logradouro="+id_logradouro, true);
                    ajax.send();
                }
    