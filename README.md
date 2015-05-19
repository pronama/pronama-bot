# pronama-bot

[@pronama_bot](https://twitter.com/pronama_bot)で稼働しているプロ生ちゃんbotのソースコードです。
![プロ生ちゃんアイコン](https://cloud.githubusercontent.com/assets/1079365/7708258/67e6c522-fe8f-11e4-9494-40ee38bb0121.png)

# 遊び方&開発方法

## 0. 前提知識

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

## 1. リポジトリをclone

```
$ git clone git@github.com:treby/pronama-bot.git
```

## 2. いろいろ遊ぶ
Hubotが使える環境であれば、以下コマンドを打つだけで遊べるはず。

```
$ cd pronama-bot
$ ./bin/hubot
```

## 3. ブランチ切ってパッチを作る

```
$ git checkout -b <適当なブランチ名>
$ edit ...
```

この後`git add`とか`git commit`とかしてコミットを作る。

## 4. 自分のリポジトリの登録
パッチが完成したら、このリポジトリをforkしてそれをremote名に登録する。

```
$ git remote add <任意のremote名> git@github.com:<Your Account>/pronama-bot.git
```

`git remote -v`で確認。

## 5. 自分のリポジトリにpush

```
$ git push <任意のremote名> <適当なブランチ名>
```

## 6. Web上でPull Requestを作成する
コメントを書いたり、ボタンをポチッと押したりしてください。

# Contributors
ありがとうございます！

- [@kuzuniku](https://github.com/kuzuniku)
