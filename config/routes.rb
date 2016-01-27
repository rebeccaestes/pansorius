Rails.application.routes.draw do

  root to: 'profiles#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :values, only: [:index, :new, :create]
  end
end
