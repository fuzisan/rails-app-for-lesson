Rails.application.routes.draw do
  # deviseが自動生成するルーティング
  devise_for :users
  # ツイート一覧画面へのルーティングを定義
  resources :tweets

  # resourcesを制限する
    resources :users, only: [:index, :show] do
      resource :favorites
    end
  #お気に入り機能をツイートとuserに紐付ける
  resources :tweets do
    resource :favorites
    resource :users
  end

# ルートパス　でアクセスした時にツイート一覧へのルーティングを定義
root 'tweets#index'
end