Rails.application.routes.draw do
  resources :perks
  resources :weapons
    
  resources :posts do
    resources :post_likes, only: [:create]
    resources :likes, only: [:create]
  end
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
