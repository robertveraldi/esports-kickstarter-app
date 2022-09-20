Rails.application.routes.draw do
  root "projects#index"
  resources :projects

  get "/signup" => "users#new"
  post "/users" => "users#create"
end
