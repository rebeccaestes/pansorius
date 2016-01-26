Rails.application.routes.draw do

  resources :experiences
  resources :valuetags
  root to: 'profiles#index'
  devise_for :users
  resources :profiles
end
