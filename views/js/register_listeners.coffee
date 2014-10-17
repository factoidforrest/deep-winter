define ["jquery", "spin", "ladda"], ($, spin, Ladda) ->

  $('.scroll-btn').click () ->
    console.log('scroll btn clicked')
    scrollTo = $(this).attr('data-scroll')
    scroll(scrollTo)
    return false
  

  scroll = (selector) ->
    $('html,body').animate({scrollTop: $(selector).offset().top}, 'slow')

  
  $("#contact-form").submit (e) -> 
    e.preventDefault()
    l = Ladda.create($('#form-submit')[0])
    l.start()
    url = "contact"
    success = (data) ->
      console.log("submitted successfully")
      console.log(data)
      $('.error-container').html(data)
      l.stop()
    
    error = (xhr, error, reason) ->
      console.log("the request failed because: ", error, reason)
      l.stop()

    ajaxSettings = {
      type: "POST"
      #dataType: "postData"
      #contentType: "text"
      url: url
      data: $("#contact-form").serialize()
      success: success
      error: error
    }

    $.ajax(ajaxSettings)

    return false

