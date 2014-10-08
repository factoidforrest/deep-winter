
requirejs.config
  paths:
    
    # Load jquery from google cdn. On fail, load local file. 
    jquery: ["libs/jquery.min"]

    # Load bootstrap from cdn. On fail, load local file. 
    bootstrap: ["libs/bootstrap/js/bootstrap.min"]

  shim:
    
  # Set bootstrap dependencies (just jQuery) 
    bootstrap: ["jquery"]

require [
  "jquery"
  "bootstrap"
], ($) -> 
