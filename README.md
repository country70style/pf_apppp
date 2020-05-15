# README
## 要件定義
fallout76の攻略wikiサイト
各武器、perkの性能・効果を各ユーザーが作成及び編集可能
武器やperk、ゲームに関する情報等のコメント機能

特定の契機でRails側との非同期通信を行いDBにデータを格納する  
ActionCableを使用してリアルタイムで複数人のTODOの編集ができる  
LOGINしない場合は各ブラウザにデータを格納しTODOを作成する  
静的解析(rubocop)を導入する  
Issuesで課題管理を行いPull requestsにて改修する  
本番環境はproductionブランチにて運用する  
Rails側はAPI作成する  
下記に実装済み機能を〇、未実装機能を△に記す


## 開発環境
- Ruby 2.6.2
- rails 6.0.2.2
- MySQL
- bundler 2.1.4

  - Production
    - Postgreql
  - development
    - sqlite3 1.4.2

- Web Server
  
  
- Application Server
  - puma 


## 機能
- 投稿一覧のページネーション機能(kaminari)
- 〇投稿のCRUD機能(新規作成、削除、更新、一覧)
- 〇テスト機能(Rspecで実装)
- レスポンシブ対応　(Bootstrap)
