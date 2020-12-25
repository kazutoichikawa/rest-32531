Rails.application.routes.draw do
  devise_for :users
  root to: "shops#index"
  resources :shops
  namespace :admin do
    resources :restaurants, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
end
