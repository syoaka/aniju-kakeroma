# README

# アプリケーション名
aniju-kakeroma

# アプリケーション概要

加計呂麻島移住者向けのコミュニティサイト

# URL

https://aniju-kakeroma.onrender.com

# テスト用アカウント
### 出品者
- Basic認証パスワード：1122
- Basic認証ID：admin
- メールアドレス：a@a
- パスワード：aaa111
### 回答者
- Basic認証パスワード：1122
- Basic認証ID：admin
- メールアドレス：s@s
- パスワード：aaa111

# 利用方法

1.トップページのヘッダーからユーザー新規登録を行う。  
2.トップページの新規投稿ボタンより、相談内容（タイトル・本文・対象地域・必要であれば画像）を入力し投稿する。  
3.回答者はコメントより回答し、コメントにてコミュニケーションを取る。  
4.ヘッダーの検索フォームより、投稿物のタイトル検索が可能。

# アプリケーションを作成した背景

自分自身の経験及び、移住仲間にヒアリングし、実際移住した際の不安を解消する方法を検討しました。  
課題として挙げられた中で、「僻地のためネット上に情報が流れていない」、「島に知り合いがいない場合、情報収集が難しい」以上２点の解消するための選択肢として、相談を共有して移住者と島民のコミュニケーションの足掛かりとなればと思い、本アプリを作成しました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1C1mB7T3m9ERe_sEwCRqCDVGpsyfixVvfd3r2cIc18Jg/edit#gid=1785908763
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/eaa09ee3910d3fca0aa8412d46e66697.png)](https://gyazo.com/eaa09ee3910d3fca0aa8412d46e66697)


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/48a5ad54f05e79b1bf1d878a76af71b4.png)](https://gyazo.com/48a5ad54f05e79b1bf1d878a76af71b4)

# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行

% git clone https://github.com/syoaka/aniju-kakeroma.git  
% cd aniju-kakeroma  
% bundle install  
% yarn install

# 工夫したポイント
自分の実体験や移住仲間から意見を集め、実際にこんなアプリがあったら良かったと感じた物を作成しました。  
地域を絞り、移住相談という限定された内容のコミュニティという点で、本アプリが移住者と島民の繋がりを持つきっかけの一助となればと思います。