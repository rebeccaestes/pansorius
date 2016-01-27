Rails.application.routes.draw do

  resources :experiences
  root to: 'profiles#index'
  devise_for :users

  resources :profiles do
    resources :values, shallow: true do
      resources :valuetaggings
    end
  end
end
