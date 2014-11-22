# Description:
#   Lying Cat is summoned when the word 'lying' is used
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   lying - summons Lying Cat
#
#
# Author:
#   Chris Boette (https://github.com/chrisbodhi), 
#   by way of hubot-business-cat by
#   Morgan Wigmanich <okize123@gmail.com> (https://github.com/okize)

images = require './data/images.json'
trigger = require './data/triggers.json'

regex = new RegExp trigger.join('|'), 'gi'

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images
