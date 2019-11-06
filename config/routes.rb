Rails.application.routes.draw do
  namespace :admin do
    resources :reviews, only: [:destroy, :edit]
    resources :restaurants do
      resources :reviews
    end
  end

  resources :restaurants, only: [:index, :show, :new, :create] do 
    resources :reviews, only: [:new, :create]
    end
end
