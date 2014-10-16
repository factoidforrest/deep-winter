define ["jquery","modernizr"], ($) ->
	if (!Modernizr.cssvhunit)
		setRootEm = () ->
			height = $(window).height()
			$('.fullscreen').css('height', height)


		setRootEm()
		$(window).on('resize', setRootEm)
