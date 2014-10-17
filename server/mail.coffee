email = require("emailjs")

server = email.server.connect(
  user: "deepwinterdevelopment"
  password: process.env.EMAILPASSWORD
  host: "smtpcorp.com"
  #ssl: true
  timeout: 15000
  port: 2525
)


module.exports = (params, res) ->
# send the message and get a callback with an error or details of the message that was sent
  server.send 
    text: params.message + "\r\n -" + params.name
    from: params.email
    to: "deepwinterdevelopment@gmail.com"
    subject: params.subject
  , (err, message) ->

    console.log err or message
    if err
      res.status(200).send(failHTML(err))
    else
      res.status(200).send(successHTML)

failHTML = (error) ->
 '<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>'+ error + '</div>'

successHTML = '<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Message Sent</strong> 
</div>'