sendMail = require('./mail')

exports.root = (req, res) ->
	#not using the section stuff but leaving it in because it may come in handy later
	section = req.param "section"
	section ||= "main"
	res.render('root.jade', {section: section})

exports.contact = (req, res) ->
  console.log(req.body)
  sendMail(req.body, res)
