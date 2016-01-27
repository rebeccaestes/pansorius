Rails.application.routes.draw do


  root to: 'pages#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :valuetaggings
    end
  


  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'


end
