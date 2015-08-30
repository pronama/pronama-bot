# Description:
#   フォローされた際 → 一言添えてフォローバック
#
# Notes:
#   botなので、あんまりフォローとか関係ないけれど、
#   まあ気が向いたら構う、飽きたら外すーくらいの温度感で良いのではないかと。
#   TODO: 定期的にフォローを整理？

module.exports = (robot) ->
  robot.on 'followed', (event) ->
    robot.send {}, "@#{event.user.name} フォローありがとう！どうぞよろしくね♪Pull Request待ってるよ！ https://github.com/pronama/pronama-bot"
    robot.adapter.join event.user
