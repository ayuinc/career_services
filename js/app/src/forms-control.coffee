$(document).ready ->

	$button = $('.body button[type="submit"]')
	$bodyForm = $('.body form')
	$searchForm = $('#search-form')

	overlayTempl = '<div class="form-overlay">' +
								'<div>' +
								'<a href="#" class="form-overlay-close">X</a>' +
								'<h3>Procesando información</h3>' +
								'<div class="mt-42">' +
								'<span class="spinner animated rotateIn infinite icon-spinner9"></span>' +
								'</div>' +
								'</div>' +
								'</div>'

	if ($searchForm.find('#edit-keys').val().length < 1)
		$searchForm.find('#edit-submit').addClass('disabled')

	$searchForm.find('#edit-keys').on('keyup', ->
		if ($searchForm.find('#edit-keys').val().length < 1)
			$searchForm.find('#edit-submit').addClass('disabled')
		else
			$searchForm.find('#edit-submit').removeClass('disabled')
		return
	)


	$bodyForm.on('submit', (e)->
		if $bodyForm.valid()
			$('body').addClass('form-on-submit').append(overlayTempl)
			formulario = $('input[name=origen]')[0].value
			dataLayer.push({
		    event: 'formSubmit'
		    form: formulario
		    estado: 'Success'
		  })
		return
	)

	$('.form-overlay-close').click((e)->
		# e.preventDefault()
		$('.form-overlay').remove()
		$('body').removeClass('form-on-submit')
		return
	)

	return