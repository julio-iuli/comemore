$(document).ready(function(){
/*
	$("span").click(function(){
		alert($("img").attr("src", "img/poltrona_selecionada.png")
		.attr("title", "cadeira selecionada"));
	});
	
	$("span").click(function(){
		$("img")
			.attr({
				src:"img/poltrona_selecionada.png",
				title:"cadeira selecionada"
			});
		
	});
*/
	$("span").click(function() {
		//$("img").removeAttr("src");
		//alert($("img").hasClass("destaque"));
		//$("img").addClass("destaque");
		//alert($("img").hasClass("destaque"));
		$("img").toggleClass("destaque");
	});
	

});