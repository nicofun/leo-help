RtmClient = require('@slack/client').RtmClient
RTM_EVENTS = require('@slack/client').RTM_EVENTS

token = process.env.token
name = process.env.name

rtm = new RtmClient token
rtm.start()

id = rtm.dataStore.getUserByName name

rtm.on RTM_EVENTS.MESSAGE, (m)->
  if not m.text?
    return

  if m.user.id == id
    rtm.sendMessage "助けて", m.channel

