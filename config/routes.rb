Rails.application.routes.draw do
  get 'pledges/show'
  get 'pledges/new'
  get 'pledges/create'
  get 'pledges/delete'
  root "projects#index"
  resources :projects
  resources :categories
  resources :users, except: :index
  resources :tiers

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
