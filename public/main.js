requirejs.config({
  paths: {
    jquery: ["libs/jquery.min"],
    bootstrap: ["libs/bootstrap/js/bootstrap.min"],
    modernizr: ["libs/modernizr"]
  },
  shim: {
    bootstrap: ["jquery"]
  }
});

require(["jquery", "bootstrap", "register_listeners", "viewport_hack"], function($) {});
