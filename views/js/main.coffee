
requirejs.config
  paths:
    
    # Load jquery from google cdn. On fail, load local file. 
    jquery: ["libs/jquery.min"]

    # Load bootstrap from cdn. On fail, load local file. 
    bootstrap: ["libs/bootstrap/js/bootstrap.min"]
    modernizr: ["libs/modernizr"]

  shim:
    
  # Set bootstrap dependencies (just jQuery) 
    bootstrap: ["jquery"]


require [
  "jquery"
  "bootstrap"
  "register_listeners"
  "viewport_hack"
], ($) -> 
