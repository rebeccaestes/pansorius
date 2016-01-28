Rails.application.routes.draw do


  root to: 'pages#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :valuetaggings
    resources :skilltaggings
    resources :mailer, only: [:new, :create]
  end

  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'
  get '/mentors', to: 'profiles#mentors'
  get '/proteges', to: 'profiles#proteges'
end
