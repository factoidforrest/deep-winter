define ["jquery","modernizr"], ($) ->
	#if (!Modernizr.cssvminunit)
	setRootEm = () ->
		height = $(window).height()
		$('.fullscreen').css('height', height)


	setRootEm()
	$(window).on('resize', setRootEm)
