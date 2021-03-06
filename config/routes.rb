Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/welcome", to: "welcome#index"

  resources :users, only: [:new, :create, :show, :index]
  resources :projects, only: [:new, :create, :show, :index]
  resources :clients, only: [:new, :create, :show, :index]
  resources :project_users, only: [:create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
end
