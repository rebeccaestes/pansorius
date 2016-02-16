Rails.application.routes.draw do


  root to: 'pages#index'
  devise_for :users
  resources :profiles do
    resources :experiences
    resources :valuetaggings
    resources :skilltaggings
    resources :email, only: [:new, :create]
    get '/values', to: 'values#index' 
  end

  get '/about', to: 'pages#about'
  # get '/mentors', to: 'profiles#mentors'
  # get '/proteges', to: 'profiles#proteges'
  # post '/search/:location', to: 'profiles#locationSearch'
end
