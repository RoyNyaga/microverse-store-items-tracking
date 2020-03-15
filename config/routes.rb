# frozen_string_literal: true

Rails.application.routes.draw do
  root 'statics#home'
  resources :items
  resources :registrations, only: [:create]
  resources :users
  resources :measurements
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
