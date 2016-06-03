<?php 

// path é o caminho absoluto, onde está este e outros arquivos e a pasta js


echo '

<div>

    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery-ui.min.css">
    <script type="text/javascript" src="js/ajaxenderecos.js"></script>
    <script type="text/javascript" src="js/jqueryenderecos.js"></script>

    <fieldset>

        <legend>Endereço</legend>
        
        <label>Estado</label><br>
        <input id="inputestado" type="text" name="ds_estado" required /><br>
        <input id="hiddenestado" type="hidden" name="id_uf" />
                
        <label>Cidade</label><br>
        <input id="inputcidade" type="text" name="ds_cidade" required /><br>
        <input id="hiddencidade" type="hidden" name="id_cidade"/>

        <label>Bairro</label><br>
        <input id="inputbairro" type="text" name="ds_bairro" required /><br>
        <input id="hiddenbairro" type="hidden" name="id_bairro"/>
    
        <label>Logradouro</label><br>
        <input id="inputlogradouro" type="text" name="ds_logradouro" required /><br>
        <input id="hiddenlogradouro" type="hidden" name="id_logradouro"/>
        
        <label>Complemento</label><br>
        <input id="inputcomplemento" type="text" name="ds_end_complemento" required /><br>


                
    </fieldset>

</div>

';
//         <label>CEP</label><br>
//        <input id="inputcep" type="number" name="ds_cep" max="999999999" /><br>
?>