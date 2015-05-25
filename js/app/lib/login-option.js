$('.btn-alumnos').click(function(){
	$('#myModal .btn-alumnos h3').removeClass('bg-white');
	$('#myModal .btn-empresas h3').addClass('bg-white');
	$('#myModal .btn-alumnos h3').addClass('bg-gray-lighter');
	$('#form-alumnos').removeClass('hidden');
	$('#form-empresas').addClass('hidden');
	$('#form-recupera').addClass('hidden');
});

$('.btn-empresas').click(function(){
	$('#myModal .btn-empresas h3').removeClass('bg-white');
	$('#myModal .btn-alumnos h3').addClass('bg-white');
	$('#myModal .btn-empresas h3').addClass('bg-gray-lighter');
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
	$('#myModal h3').addClass('bg-gray-lighter');
});

$('.btn-regresar').click(function(){
	$('#form-recupera').addClass('hidden');
	$('#form-alumnos').removeClass('hidden');
	$('#myModal .btn-alumnos h3').removeClass('bg-white');
	$('#myModal .btn-empresas h3').removeClass('bg-gray-lighter');
});

