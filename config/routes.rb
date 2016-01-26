Rails.application.routes.draw do

  resources :experiences
  root to: 'pages#index'
  devise_for :users

  resources :profiles

  get '/about', to: 'pages#about' 
  get '/home', to: 'pages#home' 

end
