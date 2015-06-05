# Description:
#   基本応答
#
# Notes:
#   リプライ時のプロ生ちゃんbotの反応を定義します

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
