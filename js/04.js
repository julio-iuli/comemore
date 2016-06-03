
//Seletores de Atributo
/*
$(document).ready(function() {
	$("a[href]")
	.css("background-color", "green");
});
*/

// Seletores de conteúdo
// .contains(), :empty, .has(), :parent
/*/ O carinha mandou entrar na biblioteca pra ver exemplos de uso dos seletores
$(document).ready(function() {
	$("li:has(strong)")
	.css("background-color", "green")
})
*/

// Seletores hierárquicos aula 05
/*
$(document).ready(function(){
	//descendente (está abaixo, inclusive bem abaixo)
	//$("div li").css("background-color", "yellow");
	// filho do elemento
	//$("div > ul").css("background-color", "yellow");
	//irmaos
	$("#ul1 + li").css("color", "yellow"); //o primeiro
	$("#ul1 ~ li").css("color", "purple"); //o primeiro
	
})
*/


// abaixo os seletores simples aula 04
/*
$(document).ready(function() {
	$("*").css("color", "blue"); // seletor universal
	$("#titulo").css("color", "green"); // id
	$("p").css("color", "yellow"); // tag
	$(".outro").css("color", "red"); // classe
	$("h1, h2").css("background-color", "orange");
})
*/
