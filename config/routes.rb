Rails.application.routes.draw do

  resources :experiences
  resources :values
  root to: 'profiles#index'
  devise_for :users
  resources :profiles
end
