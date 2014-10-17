##sass = require('node-sass')
##fs = require('fs')
bodyParser = require('body-parser')

aDay = 86400000;
staticOpts = {maxAge: aDay}


exports.root = (req, res) ->
	section = req.param "section"
	section ||= "main"
	res.render('root.jade', {section: section})

exports.contact = (req, res) ->
  console.log(req)
