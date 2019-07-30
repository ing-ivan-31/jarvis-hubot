module.exports = (robot) ->
  robot.router.post '/hubot/github/:room', (req, res) ->
    room = req.params.room

    try
      data = req.body


      room_id = robot.adapter.client.rtm.dataStore.getChannelByName(room).id
      message =
      {
        "text": ":cara_de_robot: Jarvis Sending"
      }

      robot.messageRoom room_id, message
    catch error
      robot.emit 'error', error


    console.log("== Pull request data received:")
    res.send 'OK'
