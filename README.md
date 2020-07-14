# README

# プロジェクトタイトル
Fxchart

## 概要
FXの手法とその都度成功した時と失敗した時を復習できる投稿サイト、また人の手法をその都度参考にできるサイトが無かったので作りました。FXのチャートをスクショして、その手法が成功したとき、または失敗したときに復習を行うことができます。また、人の手法をみることができるので手法作りの参考にすることもできます。

***デモ***
https://i.gyazo.com/04b8e92431615d0421c61e727b11ef97.mp4

## 機能
- 機能1 投稿機能
- 機能2 いいね機能
- 機能3 ランキング機能
- 機能4 検索機能

## 使い方
1.自分の手法を投稿から画像つきで投稿を行います<br>
2.投稿した物はトップページに新しい順に表示されます<br>
3.いいねを押すことができ、いいねが多い順にRankingで表示されます<br>
4.タイトルか画像をクリックすると詳細ページに飛び詳しい情報をみることができます<br>
5.検索機能はあいまい検索で一部が一致しているところを検索できます<br>
  トップページと同様に詳細ページに飛ぶことができます<br>

## インストール
$ git clone https://github.com/oxaji/fxchart

## 作者
mail to: s76.ozaki.fumiya@gmail.com

## デプロイ
https://topchart2.herokuapp.com/

## 工夫したポイント
・トップページに目を引くタイトルをつけたかったため、cssでアニメーションをつけました

・トップページを新規投稿順に並べ、ランキングはいいねが多い順に並べ、検索機能で自分の調べたいキーワードを表示させました

・ユーザーログイン機能をつけなかったため、いいねをIPアドレスで管理し、何回も同じパソコンでいいねを押せないようにしました

## 開発環境
ruby '2.5.1'

## 課題・今度実装したい機能
・jquery validationが上手く機能しませんでした

・当初の予定では保有期間でそれぞれランキング機能を搭載する予定でした

## DB設計

## chartsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
|text|text|null: false|
|image|text|null: false|
|winlose|integer|null: false|
|style|integer|null: false|
|timefoot|integer|null: false|
|pair|integer|null: false|
|analyze|text|null: false|
|profit|text|null: false|

### Association
- has_many :likes

## likesテーブル
|chart_id|integer|null: false|
|ip|integer|null: false|

### Association
- belongs_to :charts
