Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants
  end

  resources :restaurants, only: [:index, :show, :new, :create] do 
    resources :reviews, only: [:new, :create]
    end
end
