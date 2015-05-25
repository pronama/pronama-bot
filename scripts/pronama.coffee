# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->
  robot.respond /こんにちは/i, (res) ->
    res.reply 'こんにちは、今日もどんどんコード書いていこう！'

  robot.respond /(ぬるぽ|NullPointerException)/i, (res) ->
    res.reply 'ガッ'
  robot.respond /(ジャンケン|じゃんけん)/i, (res) ->
    patterns = [
      'グー✊'
      'チョキ✌️'
      'パー✋'
    ]
    res.reply res.random(patterns)
