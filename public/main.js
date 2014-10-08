requirejs.config({
  paths: {
    jquery: ["libs/jquery.min"],
    bootstrap: ["libs/bootstrap/js/bootstrap.min"]
  },
  shim: {
    bootstrap: ["jquery"]
  }
});

require(["jquery", "bootstrap"], function($) {});
