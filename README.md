# DOCS_COMM

DOCS_COMMとはGoogleフォームのアンケートを不特定多数の人間に共有する事を目的としたWebサイトです。
URL: https://intense-hollows-49590.herokuapp.com/

<img width="500" alt="スクリーンショット 2021-05-04 14 24 42" src="https://user-images.githubusercontent.com/75083795/117141592-ae687a80-ade9-11eb-82ff-a566352fdb98.png">


テストログインからお入りください。

googleフォーム URLサンプル

https://docs.google.com/forms/d/e/1FAIpQLSe2olFhlP-KxqH66GZAja28FVuR5lwTb7Do5_iIDndd69vmPw/viewform?usp=sf_link

https://docs.google.com/forms/d/e/1FAIpQLSdCZQLmWr8yofWbcKQRvY790ekDGNSM9BbpqKr-yYquMfjvDg/viewform?usp=sf_link

https://docs.google.com/forms/d/e/1FAIpQLSc7DoLXS6bNUb6zbboZt4_fBS5-LZfeNlRN9djjcA3F_2P1ZA/viewform?usp=sf_link

## 使い方
まずはホーム画面から"登録する"を押していただいてユーザー登録していただきます。

<img width="300" alt="スクリーンショット 2021-05-05 20 31 28" src="https://user-images.githubusercontent.com/75083795/117142093-4a928180-adea-11eb-9156-ceaa4da025f2.png">


今回は採用担当者様に向けてテストログイン機能を設けております。
また、性別限定機能を確かめていただくために性別ごとにログインできるようになっておりますのでお試しください。


ログインしていただきますと、投稿フォームのあるホーム画面へ飛びます。

<img width="600" alt="スクリーンショット 2021-05-05 21 52 14" src="https://user-images.githubusercontent.com/75083795/117143860-410a1900-adec-11eb-953d-b8037ffedd96.png">

ヘッダー右上のバーからはユーザー一覧ページ、ログインユーザーページ、設定ページ、ログアウトに飛ぶことができます。

ヘッダーのバー横のプラスマークと左のロゴアイコンからはホーム画面に飛びます。

<img width="500" alt="スクリーンショット 2021-05-04 14 24 42" src="https://user-images.githubusercontent.com/75083795/117141592-ae687a80-ade9-11eb-82ff-a566352fdb98.png">

投稿はgoogleフォームのURLのみを投稿できるようにしています。
またどこかから拾ってきた他人のアンケートや、不正なアンケートの投稿を防止するために、

利用者さま本人のgoogleアカウントの送信欄から取得したURLからでしか投稿できないようになっています。また短縮URLもご利用いただけません。

投稿方法はフォーム右下にございます、使い方からも詳しく見ることができます。

ホーム画面をスクロールしていただきますと他のユーザー様のアンケートをご覧になることができます。


気になる投稿がございましたらユーザー名を押していただくと、そのアンケートの詳細ページに飛ぶことができます。
<img width="400" alt="スクリーンショット 2021-05-05 21 50 34" src="https://user-images.githubusercontent.com/75083795/117143579-f12b5200-adeb-11eb-966e-9c2d587bb30e.png">

詳細ページからはコメントを投稿することができます。
またアンケート主本人様向けの機能としてマイクロポストにはSNS共有機能がございます。

<img width="400" alt="スクリーンショット 2021-05-05 20 33 14" src="https://user-images.githubusercontent.com/75083795/117142695-f2a84a80-adea-11eb-9846-ed669b5b298d.png">


詳細ページのユーザー名を押していただくと今度はユーザーの詳細画面に飛ぶことができます。

<img width="400" alt="スクリーンショット 2021-05-05 21 48 19" src="https://user-images.githubusercontent.com/75083795/117143299-a3aee500-adeb-11eb-9471-b730ec891fd5.png">

ここではユーザーが投稿したフォームの一覧をご覧になることができます。またこの画面でもユーザー本人様向けの機能として自身のユーザーページをSNSに共有できます。

ヘッダー右上のバーから飛べる設定メニューでは、アイコン画像、ユーザー名、自己紹介、メールアドレス、パスワード、性別を再設定できます。

<img width="400" alt="スクリーンショット 2021-05-05 21 54 27" src="https://user-images.githubusercontent.com/75083795/117144089-7c0c4c80-adec-11eb-87ba-93e5c7c5ea6b.png">



## サイトを作ろうと思った経緯
DOCS_COMMは上述の通りアンケートを不特定多数のユーザーに送り合う事を目的としたWebサイトです。

私がこのサイトの制作に取り掛かろうと思った契機は、大学時代多くの友人が卒業論文の作成にあたってアンケートの回答を求めるSNSの投稿を多数しており、

かなり苦労されている様子を目の当たりにしてきて、それに特化したSNSがあれば役立つのではないかと思ったのがきっかけです。

友人の投稿の傾向を見ると誰がアンケートに答えたかはさほど重要ではなく、とにかくサンプル数が欲しそうな様子だったので、
　

こういったポートフォリオではフォロー機能やいいね機能を実装するのが定石であると考えられますが、今回の目的にはそぐわないと考えあえて実装しておりません。

とはいえ性別によって送り主を変えることができれば便利かと考えましたのでそれらの機能や、

そのアンケートで取り扱っている分野において興味を持った閲覧者間でコミュニティが広がるようにコメント投稿機能も追加しました。

## 工夫したこと
工夫したことと致しましては、まだまだ技術的にも未熟ではありますが、

その中でも自分のできる中でフロントにおいてもバックエンドにおいてもより良いUI/UXを追求しました。

具体的にはユーザーにとって最適なリダイレクト先をどこにするべきかを考えて工夫したり、フロントにおいても特異な技術を使えないなりに、

モダンなサイトの色使いの傾向を研究し、できるだけ古臭くならないように工夫をしました。

またその中でも技術の追求も続けて採用できるものはどんどん採用しました。
## 使用技術
Ruby 2.6.3(使用言語)

Rails 5.1.7(使用フレームワーク)

heroku 7.50.0(デプロイ先)

Mailgun(メール機能)

AWS S3（ユーザー画像保存先）

carrierwave(画像投稿)

slick(画像のスライド)



## 機能要件
記事一覧表示機能

googleフォーム投稿機能

googleフォーム削除機能

送信元ユーザー限定機能（性別）

投稿フォームコメント投稿機能

投稿フォームコメント削除機能

フォームSNS共有機能

ユーザーSNS共有機能

管理ユーザー登録機能

性別別テストログイン機能

プロフィール画像投稿機能

プロフィールbio投稿機能

## 非機能一覧
Remember Me機能

メールによるアカウント有効化機能

メールによるパスワード再設定機能

ユーザー表示ページネーション 機能

正規表現を用いたURLの検証機能

Fontawsomeを用いたアイコン表示機能

slickを用いた画像スライド機能

## ER図
<img width="417" alt="スクリーンショット 2021-05-05 22 00 38" src="https://user-images.githubusercontent.com/75083795/117144824-5c295880-aded-11eb-8158-cf5cbea6a992.png">



## インフラ
Heroku

AWS S3
