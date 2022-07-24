Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :food_products
  resources :menu_items
end
