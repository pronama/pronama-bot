# Description:
#   bot起動時の挙動
#
# Notes:
#   スクリプトが読み込まれたタイミングで通知する
XDate = require 'xdate'

module.exports = (robot) ->
  # Slackなどではsendが生えなくてエラーになるみたいなので回避するためのHack
  # http://shokai.org/blog/archives/9571
  cid = setInterval ->
    return if typeof robot?.send isnt 'function'

    [prev_utime, boot_count] = fetchBootHistoryFromBrain()

    prev_time = new XDate(prev_utime)
    curr_time = new XDate()

    pushBootHistoryToBrain(curr_time.getTime(), ++boot_count)
    sendBootMessage(curr_time, prev_time, boot_count)

    clearInterval cid
  , 1000

  sendBootMessage = (curr_time, prev_time, boot_count) =>
    info_text = if prev_time?
                  since = if prev_time.diffMonths(curr_time) > 1
                            "#{prev_time.diffMonths(curr_time).toFixed(1)}ヶ月"
                          else if prev_time.diffDays(curr_time) > 1
                            "#{prev_time.diffDays(curr_time).toFixed(1)}日"
                          else if prev_time.diffHours(curr_time) > 1
                            "#{prev_time.diffHours(curr_time).toFixed(1)}時間"
                          else if prev_time.diffMinutes(curr_time) > 1
                            "#{prev_time.diffMinutes(curr_time).toFixed(0)}分"
                          else
                            "#{prev_time.diffSeconds(curr_time).toFixed(0)}秒"
                  "#{since}ぶり#{boot_count}回目"
                else
                  "#{boot_count}回目"

    robot.send {}, "プロ生ちゃんbot、再起動！(#{info_text}) #pronama"

  fetchBootHistoryFromBrain = () =>
    boot_utime = robot.brain.get('boot_utime') ? null
    boot_count = robot.brain.get('boot_count') ? 0
    [boot_utime, boot_count]

  pushBootHistoryToBrain = (unix_time, count) =>
    robot.brain.set('boot_utime', unix_time)
    robot.brain.set('boot_count', count)
