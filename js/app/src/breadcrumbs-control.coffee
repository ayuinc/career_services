$(document).ready ->

	$breadcrumbs = $('.breadcrumbs-custom')
	$rootPath = $breadcrumbs.find('.root-path')
	$mainPath = $breadcrumbs.find('.main-path')
	$lastPath = $breadcrumbs.find('.last-path')
	# GET ABSOLUTE URL
	absoluteURL = window.location.href.split('/')
		# REMOVE LAST ITEM IN THE ARRAY TO GET THE MAIN PATH
	absoluteURL.splice(absoluteURL.length - 1, 1)
	absoluteURL = absoluteURL.join('/')
	# GET PATHNAME
	locationArr = window.location.pathname.split('/')
	mainPath = locationArr[locationArr.length - 2]
	lastPath = locationArr[locationArr.length - 1]
	# ADD ANCHOR HREF's
	$mainPath.attr('href', absoluteURL)
	$lastPath.attr('href', window.location.href)
	# CHECK after '.' dots and remove them (html, php, etc.)
	lastPath = lastPath.replace(/\..*/,'')
	# CHECK after hyphens, underscores or other symbols rather than letters or numbers
	mainPath = mainPath.replace(/[^a-z0-9]/gi,'')
	lastPath = lastPath.replace(/[^a-z0-9]/gi,' ')
	# REPLACE Text
	$mainPath.find('span').text(mainPath)
	$lastPath.find('span').text(lastPath)

	return