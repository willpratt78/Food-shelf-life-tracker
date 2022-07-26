Rails.application.routes.draw do
  devise_for :users
  root to: 'menu_items#index'
  resources :food_products
  resources :menu_items
  resources :sales
end
