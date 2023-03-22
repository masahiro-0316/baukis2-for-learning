# Baukis2 - 顧客管理システムの作成学習履歴管理リポジトリ

学習参考

* [オリジナルソフトのGithub](https://github.com/kuroda/baukis2)
* [Ruby on rails6実戦ガイド書籍:Amazonaサイト](https://www.amazon.co.jp/dp/4295008052/ref=sspa_dk_detail_3?psc=1&pd_rd_i=4295008052&pd_rd_w=SoSoh&content-id=amzn1.sym.f293be60-50b7-49bc-95e8-931faf86ed1e&pf_rd_p=f293be60-50b7-49bc-95e8-931faf86ed1e&pf_rd_r=H89DMV196KF4NCE9EC2E&pd_rd_wg=ZHkdR&pd_rd_r=27de4c50-5bf9-42c5-8f75-b3cad08580af&s=books&sp_csd=d2lkZ2V0TmFtZT1zcF9kZXRhaWw&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzQk9IT1JHU1k3QklWJmVuY3J5cHRlZElkPUEwOTE4MzU2MVRJNlRETFhQTk1CRiZlbmNyeXB0ZWRBZElkPUE1VEQyQ0FQVkRKQ0wmd2lkZ2V0TmFtZT1zcF9kZXRhaWwmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl)

## 説明

Baukis2 は企業向けの顧客管理システム（Ruby on Rails 学習用サンプル）の作成学習履歴になります。

## 推奨されるシステム環境

* Ubuntu 18.04
* Ruby 2.6.4
* PostgreSQL 11.2

## 注意事項

* 以下の手順では、一般ユーザーの権限でコマンドを実行してください。

## インストール手順

* この `README.md` が存在するディレクトリで `bin/bundle` コマンドを実行してください。

## データベースのセットアップ

* このシステム専用のデータベースを PostgreSQL 上に作成してください。
* データベースへの接続パラメータに基づいて `config/database.yml` を作成してください。
* `bin/rails db:setup` コマンドを実行してください。

## hosts ファイルの設定

* ホスト OS の `hosts` ファイルに次の 1 行を追加してください（要 root 権限）。
  `hosts` ファイルは、Mac OS X の場合は `/private/etc/hosts` フォルダに、
  Windows の場合は `C:\Windows\system32\drivers` フォルダにあります。

      127.0.0.1 example.com baukis2.example.com

## システムの起動と終了

* `bin/rails s` コマンドを実行するとシステムが起動します。
* Ctrl-C を入力するとシステムが終了します。

## システムの利用

* ブラウザで以下の URL にアクセスしてください:
  * http://baukis2.example.com:3000 -- 職員向けサイト
  * http://baukis2.example.com:3000/admin -- 管理者向けサイト
  * http://example.com:3000/mypage -- 顧客向けサイト
