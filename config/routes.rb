# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ('/')
  # root 'articles#index'

  # READ  ALL
  get 'restaurants', to: 'restaurants#index'

  # CREATE
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'

  # READ ONE - The `show` route needs to be *after* `new` route.
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # UPDATE
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
