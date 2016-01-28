Rails.application.routes.draw do


  root to: 'pages#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :valuetaggings
    resources :skilltaggings
    end

    get '/connect', to: 'profiles#connect'
  end

  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'


end
