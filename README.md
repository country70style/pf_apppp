# README
## 要件定義
特定の契機でRails側との非同期通信を行いDBにデータを格納する  
ActionCableを使用してリアルタイムで複数人のTODOの編集ができる  
LOGINしない場合は各ブラウザにデータを格納しTODOを作成する  
静的解析(rubocop)を導入する  
Issuesで課題管理を行いPull requestsにて改修する  
本番環境はproductionブランチにて運用する  
Rails側はAPI作成する  
下記に実装済み機能を〇、未実装機能を△に記す


## 開発環境
- Ruby 2.6.3
- rails 6.0.2.2

- RDBMS
  - Production
    - Postgreql
  - development
    - sqlite3 1.3.13

- Web Server
  
  
- Application Server
  - puma 


## 機能
- 投稿一覧のページネーション機能
- 〇投稿のCRUD機能(新規作成、削除、更新、一覧)
- △TODOの並び替え機能
- 〇テスト機能(Rspecで実装)
