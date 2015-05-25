$('.btn-alumnos').click(function(){
	$('#myModal .btn-alumnos h4').removeClass('btn-notselected');
	$('#myModal .btn-empresas h4').addClass('btn-notselected');
	$('#myModal .btn-alumnos h4').addClass('btn-selected');
	$('#form-alumnos').removeClass('hidden');
	$('#form-empresas').addClass('hidden');
	$('#form-recupera').addClass('hidden');
});

$('.btn-empresas').click(function(){
	$('#myModal .btn-empresas h4').addClass('btn-selected');
	$('#myModal .btn-empresas h4').removeClass('btn-notselected');
	$('#myModal .btn-alumnos h4').addClass('btn-notselected');
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
	$('#myModal h4').addClass('btn-selected');
});

$('.btn-regresar').click(function(){
	$('#form-recupera').addClass('hidden');
	$('#form-alumnos').removeClass('hidden');
	$('#myModal .btn-alumnos h4').removeClass('btn-notselected');
	$('#myModal .btn-empresas h4').removeClass('btn-selected');
	$('#myModal .btn-alumnos h4').addClass('btn-selected');
	$('#myModal .btn-empresas h4').addClass('btn-notselected');
});

