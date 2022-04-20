# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events
  resources :users
  resources :attend_events, only: %i[create destroy]

  # Defines the root path route ("/")
  root 'events#index'
end
