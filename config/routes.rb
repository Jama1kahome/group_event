Rails.application.routes.draw do
  devise_for :users
  get 'my_friends', to: 'users#my_friends'
  get 'profile', to: 'users#profile'
  post 'search_friends', to: 'users#search'
  get 'add_friend', to: 'users#add_friend'
  resources :users, only: [:show]
  resources :friendships
  root 'home#index'
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
