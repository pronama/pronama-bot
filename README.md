# pronama-bot

[@pronama_bot](https://twitter.com/pronama_bot)で稼働しているプロ生ちゃんbotのソースコードです。
![プロ生ちゃんbot](https://cloud.githubusercontent.com/assets/1079365/7708258/67e6c522-fe8f-11e4-9494-40ee38bb0121.png)

## プログラミング生放送のサイトで紹介していただきました！
:tada:[「プロ生ちゃん bot が公開されています」](http://pronama.azurewebsites.net/2015/05/23/twitter-pronama-chan-bot/):tada:

## クイックスタート

```
$ git clone git@github.com:pronama/pronama-bot.git
$ cd pronama-bot
$ ./bin/hubot
```

## 協力者募集中！
適当なノリなので、どんどんPull Requestをください。
[気ままにIssueを立ててる](https://github.com/pronama/pronama-bot/issues)ので、気が向いたら拾ってみてください(もちろん、何かIssueを立てていただいて構いません)

Issueを拾っていただいた場合、[GitHubの仕様上](https://help.github.com/articles/closing-issues-via-commit-messages/#keywords-for-closing-issues)`close #1(Issue番号)`のようなコメントを含めるとマージと一緒にIssueを閉じることができます。お試しください。

## 開発Tips
### 手元でやりとりを検証する
簡単なやりとりであれば、Twitterアカウントなどを用意しなくても可能です。

```
$ ./bin/hubot
# エラーっぽいのが出ても、一旦無視してください

pronama_bot> pronama_bot こんにちは！
Shell: こんにちは、今日もどんどんコード書いていこう！
```

### 実際のTwitterアカウント(favとかフォローとかその辺の検証に使う)

```
$ cp local_run.sh.sample local_run.sh
$ edit local_run.sh # トークンなどを自分で取得したものに置き換える
$ ./local_run.sh
```

## 開発基礎知識

### Gitについて

- 慣れていない方：[『イケててヤバいGit入門』](http://labs.gree.jp/blog/2013/12/10049/)
- 中級編：[『現場で使うGitのテクニック』](http://qiita.com/treby/items/9184251b545d9ebc3198)
- 中身：[『gitを使わずにcommitする』](http://blog.spacemarket.com/code/commit-without-git/)

※体系的に学ぶ／分からないことが分かっているのであればなんだかんだ[公式](https://git-scm.com/book/ja/v1)が一番分かりやすいです。

### Hubotについて

- [プログラミング生放送勉強会でプロ生ちゃんbotのLTをしてきました #pronama](http://www.atelier-nodoka.net/2015/05/pronama-lt-pronama-bot/) …… メイン
- [Heroku+HubotでTwitter検索結果をSlackに流す](http://blog.spacemarket.com/code/twitter-watch-hubot-for-slack-on-heroku/) …… Hubotの使い方
- [このみんbotをnode.jsのHubot用packageとして公開しました](http://www.atelier-nodoka.net/2015/04/hubot-script-npm-publish/) …… external-scriptsの作り方(応用編)

Hubotは最近のマイブーム。

## Contributors
協力いただいている方々です。ありがとうございます！

- [@kuzuniku](https://github.com/kuzuniku)
