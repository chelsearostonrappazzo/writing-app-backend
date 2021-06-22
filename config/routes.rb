Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/stories" => "stories#index"
  get "/stories/:id" => "stories#show"

  get "/users" => "users#index"





end
