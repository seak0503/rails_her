railsのAPIクライアントライブラリ [Her](https://github.com/remiprev/her)の検証リポジトリです

## 要件

* mysql
* rbenvインストール済み
* rbenv-gemsetインストール済み

## 使い方

```
$ git clone git@github.com:seak0503/rails_her.git

$ cd rails_her

$ rbenv gemset create [ruby-version] rails_her

$ bundle install --path vendor/bundle

$ bin/rake db:create

$ bin/rake db:migrate
```