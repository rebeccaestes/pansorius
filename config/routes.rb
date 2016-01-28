Rails.application.routes.draw do


  root to: 'pages#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :valuetaggings
    end
  
  get '/proteges', to: 'profiles#proteges'
  get '/mentors', to: 'profiles#mentors'

  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'


end
