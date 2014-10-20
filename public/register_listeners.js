define(["jquery", "spin", "ladda"], function($, spin, Ladda) {
  var scroll;
  $('.scroll-btn').click(function() {
    var scrollTo;
    console.log('scroll btn clicked');
    scrollTo = $(this).attr('data-scroll');
    scroll(scrollTo);
    return false;
  });
  scroll = function(selector) {
    return $('html,body').animate({
      scrollTop: $(selector).offset().top
    }, 'slow');
  };
  return $("#contact-form").submit(function(e) {
    var ajaxSettings, error, l, success, url;
    e.preventDefault();
    l = Ladda.create($('#form-submit')[0]);
    l.start();
    url = "contact";
    success = function(data) {
      console.log("submitted successfully");
      console.log(data);
      $('.error-container').html(data);
      return l.stop();
    };
    error = function(xhr, error, reason) {
      console.log("the request failed because: ", error, reason);
      alert("Error connecting to server, please check your connection");
      return l.stop();
    };
    ajaxSettings = {
      type: "POST",
      url: url,
      data: $("#contact-form").serialize(),
      success: success,
      error: error
    };
    $.ajax(ajaxSettings);
    return false;
  });
});
