$(document).ready ->

	$siteMenu = $('.site-menu')

	# $siteMenu.height($(window).height())

# DISABLE ANCHORS
	$('.disable-anchors a').click (e)->
		e.preventDefault()
		return

	$('[data-href]').click((e)->
		# console.log($(this).data('href'))
		locationArr = window.location.pathname.split('/')
		lastPath = locationArr[locationArr.length - 1]
		mainPath = locationArr[locationArr.length - 2]
		# console.log(lastPath)
		# console.log(mainPath)
		pathObj = {}
		pathObj[mainPath] = lastPath
		# console.log(window.history)
		window.history.pushState(pathObj, '', lastPath)
		# console.log(window.history)
		document.location.replace($(this).data('href'))
		return
		)

	# MOBILE MENU
	$('.menu-trigger').click (e)->
		e.preventDefault()
		$('.site-wrapper').toggleClass('menu-on')
		$('body').toggleClass('scroll-y-off')
		return

	# ADD SPECIAL CLASSES TO ELEMENTS
	$('#edit-submit.form-submit').addClass('atm-buscar')
	$('.language-link').addClass('atm-idiomas')

	# IE8
	pgwBrowser = $.pgwBrowser()
	console.log pgwBrowser
	isIE = if pgwBrowser['browser']['group'] is 'Explorer' then true else false
	if isIE
		$('.site-wrapper').addClass 'ie'
		$('.site-menu').hide()

	return # END ON READY















