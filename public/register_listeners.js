define(["jquery"], function($) {
  var scroll;
  $('.scroll-btn').click(function() {
    var scrollTo;
    console.log('scroll btn clicked');
    scrollTo = $(this).attr('data-scroll');
    scroll(scrollTo);
    return false;
  });
  return scroll = function(selector) {
    return $('html,body').animate({
      scrollTop: $(selector).offset().top
    }, 'slow');
  };
});
