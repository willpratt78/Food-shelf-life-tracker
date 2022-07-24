Rails.application.routes.draw do
  root to: 'home#index'
  resources :food_products
  resources :menu_items
end
