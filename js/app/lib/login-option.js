/*$('.btn-ingresa').click(function(){
	$('.overlay').fadeIn();
	$('#modal').fadeIn();
});
$('#close').click(function(){
	$('.overlay').fadeOut();		
	$('#modal').fadeOut();
	return false;
});
*/

$('.btn-alumnos').click(function(){
	$('h3').removeClass('bg-white');
	$('h3').addClass('bg-gray-lighter');
	$('.btn-alumnos h3').removeClass('bg-gray-lighter');
	$('.btn-alumnos h3').addClass('bg-white');
	$('#form-alumnos').removeClass('hidden');
	$('#form-empresas').addClass('hidden');
	$('#form-recupera').addClass('hidden');
});

$('.btn-empresas').click(function(){
	$('h3').removeClass('bg-white');
	$('h3').addClass('bg-gray-lighter');
	$('.btn-empresas h3').removeClass('bg-gray-lighter');
	$('.btn-empresas h3').addClass('bg-white');
	$('#form-empresas').removeClass('hidden');
	$('#form-alumnos').addClass('hidden');
	$('#form-recupera').addClass('hidden');
});


$('.btn-recuperar').click(function(){
	$('#form-recupera').removeClass('hidden');
	$('#form-alumnos').addClass('hidden');
	$('#form-empresas').addClass('hidden');
});

$('.close').click(function(){
	$('#form-recupera').addClass('hidden');
	$('#form-alumnos').removeClass('hidden');
	$('#form-empresas').addClass('hidden');
	$('h3').addClass('bg-gray-lighter');
});

$('.btn-regresar').click(function(){
	$('#form-recupera').addClass('hidden');
	$('#form-alumnos').removeClass('hidden');
});

/*$('.btn-empresas')click(function(){
	$('form-empresas').removeClass('hidden');

});*/