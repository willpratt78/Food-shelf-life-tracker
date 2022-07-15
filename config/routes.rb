Rails.application.routes.draw do
  root to: 'food_products#index'
  resources :food_products
end
