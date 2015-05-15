$(document).ready ->

	$container = $('.isotope-grid')
	$mallaCurricular = $('.malla-curricular')

	$mallaCurricular.children('li').addClass('malla-item')
	$container.children('li').addClass('isotope-item')

	$mallaCurricular.isotope({
		itemSelector: '.malla-item'
		layoutMode: 'fitRows'
		})

	$container.imagesLoaded ->
		$container.isotope({
			itemSelector: '.isotope-item'
			layoutMode: 'fitRows'
			})
		return

	return