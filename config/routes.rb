Rails.application.routes.draw do
  resources :friends
  root 'home#index'
  resources :events
  devise_for :users
  get '/profile/', to: 'home#profile', as: 'profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
