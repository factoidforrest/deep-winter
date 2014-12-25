define(["jquery"], function($) {
  jQuery("img.svg").each(function() {
    var $img, imgClass, imgID, imgURL;
    $img = jQuery(this);
    imgID = $img.attr("id");
    imgClass = $img.attr("class");
    imgURL = $img.attr("src");
    return jQuery.get(imgURL, (function(data) {
      var $svg;
      $svg = jQuery(data).find("svg");
      if (typeof imgID !== "undefined") {
        $svg = $svg.attr("id", imgID);
      }
      if (typeof imgClass !== "undefined") {
        $svg = $svg.attr("class", imgClass + " replaced-svg");
      }
      $svg = $svg.removeAttr("xmlns:a");
      $img.replaceWith($svg);
    }), "xml");
  });
});
