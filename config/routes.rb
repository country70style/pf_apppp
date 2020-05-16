Rails.application.routes.draw do
  resources :tweets do
    resources :likes, only: [:create]
  end
  resources :perks
  resources :weapons
  resources :posts 
  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
