Rails.application.routes.draw do
  devise_for :users
  root to: "shops#index"
  resources :shops
  get 'shops/search'
  namespace :admin do
    resources :restaurants do
      collection do
        get 'search'
      end
    end
  end
end
