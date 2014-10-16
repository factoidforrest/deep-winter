define(["jquery", "modernizr"], function($) {
  var setRootEm;
  setRootEm = function() {
    var height;
    height = $(window).height();
    return $('.fullscreen').css('height', height);
  };
  setRootEm();
  return $(window).on('resize', setRootEm);
});
