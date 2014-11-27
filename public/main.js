requirejs.config({
  paths: {
    jquery: ["libs/jquery.min"],
    bootstrap: ["libs/bootstrap/js/bootstrap.min"],
    modernizr: ["libs/modernizr"],
    spin: ["libs/ladda/spin.min"],
    ladda: ["libs/ladda/ladda.min"]
  },
  shim: {
    bootstrap: ["jquery"],
    "spin": {
      exports: "Spinner"
    },
    "ladda": {
      depends: "spin",
      exports: "Ladda"
    }
  }
});

require(["jquery", "ladda", "bootstrap", "register_listeners", "viewport_hack"], function($, Ladda) {
  window.ladda = Ladda;
  return console.log('JS loaded');
});
