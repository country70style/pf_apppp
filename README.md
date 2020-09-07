# README
## アプリケーション概要
fallout76の攻略wikiサイト


## 要件定義
各武器の性能・効果を各ユーザーが作成及び編集可能にする  
各Perkの性能・効果を各ユーザーが作成及び編集可能にする  
武器やperk、ゲームに関する情報等の投稿機能を実装する  
武器一覧画面に、武器に関する投稿を全て表示する  
Perk一覧画面に、武器に関する投稿を全て表示する  
各投稿に対してページネーション機能を実装する  
テスト機能を実装する  



## 開発環境
- Ruby 2.6.2
- rails 6.0.2.2
- bundler 2.1.4

  - Production
    - Postgreql
  - development
    - sqlite3 1.4.2

- Web Server
  
  
- Application Server
  - puma 


## 機能
下記に実装済み機能を〇、未実装機能を△に記す
- 〇投稿一覧のページネーション機能(kaminari)
- 〇投稿のCRUD機能(新規作成、削除、更新、一覧)
- 〇テスト機能(Rspecで実装)
- 〇レスポンシブ対応(Bootstrap)
- 〇投稿のいいね機能
