# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :todos, only: %i[index create destroy], path: '/'
  post 'todo/:id/toggle', to: 'todos#toggle'

  # /users
  # /users/todos
  resources :users, only: %i[index] do
    collection do
      resources :todos, module: :users, only: %i[index]
    end
  end
  # Defines the root path route ("/")
end
