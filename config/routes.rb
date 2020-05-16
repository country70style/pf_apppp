Rails.application.routes.draw do
  resources :perks
  resources :weapons
  resources :posts 
  root to: 'posts#index'
  resources :tweets do
    resources :likes, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
