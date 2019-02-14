Rails.application.routes.draw do
  resources :todos do
  resources :tasks, only: :create
  end

  resources :tasks, only: :index
  devise_for :users
  root 'todos#index'
end
