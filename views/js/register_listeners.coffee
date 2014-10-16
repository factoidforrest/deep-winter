define ["jquery"], ($) ->

	$('.scroll-btn').click () ->
		console.log('scroll btn clicked')
		scrollTo = $(this).attr('data-scroll')
		scroll(scrollTo)
		return false
	

	scroll = (selector) ->
		$('html,body').animate({scrollTop: $(selector).offset().top}, 'slow')
