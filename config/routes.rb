Rails.application.routes.draw do
  root 'statics#home'
  resources :items
  resources :registrations, only: [:create]
  resources :users
  resources :measurements
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
