Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "projects#index"

  resources :projects
end
