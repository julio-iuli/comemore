$(document).ready(function(){
	$("span").click(function(){
		//alert($("p").html());
		//$("p").html("<h1>Trocando o texto</h1>");
		//alert($("div").text()); //a função text não interpreta como html...
		//$("#div2").text( $("p").html() );
		
		//alert($("textarea").val()); //recupera o valor que está dentro da textarea
		//$("p").html( $("textarea").val() ); //jogando o conteúdo do textarea dentro do package
		
		$("div").replaceWith("<p>Agora vai acontecer o que?</p>"); //troca tudo
		
	});
});