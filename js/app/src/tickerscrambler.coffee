$(document).ready ->

	textES = $('#text-switcher-word').length
	textEN = $('#text-switcher-word-en').length

	tlText = ''
	textArr = []
	if textES
		tlText = '#text-switcher-word'
		textArr = ['bienestar', 'innovación', 'diseño']
	else
		tlText = '#text-switcher-word-en'
		textArr = ['well-being', 'innovation', 'design']

	tl = new TimelineMax()
	makeScramble = ()->
		tl.to(tlText, 
			3, 
			{ scrambleText: {
				text: textArr[0], 
				chars: "utec", 
				revealDelay: 0.5, 
				speed: 7,
				tweenLength: true, 
				ease: Linear.easeNone
				}
			})
		.to(tlText, 
			3, 
			{ scrambleText: {
				text: textArr[1], 
				chars: "utec", 
				revealDelay: 0.5, 
				speed: 7,
				tweenLength: true, 
				ease: Linear.easeNone
				}
			})
		.to(tlText, 
			3, 
			{ scrambleText: {
				text: textArr[2], 
				chars: "utec", 
				revealDelay: 0.5, 
				speed: 7,
				tweenLength: true, 
				ease: Linear.easeNone
				}
			})
		setTimeout(()->
			makeScramble()
			return
		, 1500)
		return
	makeScramble()

	return