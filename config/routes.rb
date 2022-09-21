Rails.application.routes.draw do
  root "projects#index"
  resources :projects
  resources :users, except: :index

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
