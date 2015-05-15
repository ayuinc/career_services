$(document).ready ->

	$textContainer = $('.text-switcher-container')
	$switcherWords = $textContainer.data('switcher-words')
	$switcherWords = $switcherWords.toString()
	$switcherWords = $switcherWords.match(/([^']*)/g)
	switcherWords = []
	$.each($switcherWords, (index, item)->
		# console.log(item.length)
		if (item.length <= 3)
			$switcherWords.slice(index)
		else			
			switcherWords.push(item)
			# console.log(item)
		return
		)
	# $switcherWords = ['bienestar', 'innovación', 'descrubimiento']

	# console.log(switcherWords)

	$wordLength = switcherWords.length # 2
	# console.log($wordLength)
	count = 0
	doSwitch = ()->
		# console.log(count)
		setTimeout(() ->
			# console.log(count)
			$textContainer.text(switcherWords[count])
			count++
			doSwitch()
			if (count > $wordLength)
				count = 0
				doSwitch()
			return
		, 2000
		)
		return
	doSwitch()

	# newSetInterval = (callback, duration, callbackArguments)->
	# 	callback.apply(this, callbackArguments)
	# 	args = arguments
	# 	scope = this
	# 	setTimeout(()->
	# 		newSetInterval.apply(scope, args)
	# 		return
	# 	, duration
	# 	)
	# 	return
	# newSetInterval(doSwitch, 1000)

	return