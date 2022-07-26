Rails.application.routes.draw do
  devise_for :users
    if current_user
      root to: 'menu_items#index'
    else
      devise_scope :user do
        root to: 'devise/registrations#new'
      end
    end
  resources :food_products
  resources :menu_items
end
