Rails.application.routes.draw do

  resources :experiences
  root to: 'profiles#index'
  devise_for :users

  resources :profiles
end
