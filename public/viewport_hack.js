define(["jquery", "modernizr"], function($) {
  var setRootEm;
  if (!Modernizr.cssvhunit) {
    setRootEm = function() {
      var height;
      height = $(window).height();
      return $('.fullscreen').css('height', height);
    };
    setRootEm();
    return $(window).on('resize', setRootEm);
  }
});
