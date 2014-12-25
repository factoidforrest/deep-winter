
requirejs.config
  paths:
    
    # Load jquery from google cdn. On fail, load local file. 
    jquery: ["libs/jquery.min"]

    # Load bootstrap from cdn. On fail, load local file. 
    bootstrap: ["libs/bootstrap/js/bootstrap.min"]
    modernizr: ["libs/modernizr"]
    spin: ["libs/ladda/spin.min"]
    ladda: ["libs/ladda/ladda.min"]

  shim: {
    bootstrap: ["jquery"],
    "spin": {exports: "Spinner"}
    "ladda": {
      depends: "spin",
      exports: "Ladda"
    }

  }
require [
  "jquery"
  "ladda"
  "bootstrap"
  "register_listeners"
  "viewport_hack"
  "svg_replacement"
], ($, Ladda) -> 
  window.ladda = Ladda
  console.log 'JS loaded'