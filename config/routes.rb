Rails.application.routes.draw do
  root 'statics#home'
  resources :items
  resources :users
  resources :measurements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
