Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/stories" => "stories#index"
  get "/stories/:id" => "stories#show"
  post "/stories" => "stories#create"
  
  get "/parties" => "parties#index"
  get "/parties" => "parties#show"

  get "stories/:id/characters" => "characters#index"
  get "characters/:id" => "characters#show"

  get "stories/:id/chapters" => "chapters#index"
  get "chapters/:id" => "chapters#show"
  post "stories/:id/characters" => "characters#create"
  patch "characters/:id" => "characters#update"

  get "trope" => "balms#trope"
  get "archetypes" => "balms#archetypes"
  get "setting" => "balms#setting"
  get "prompt" => "balms#prompt"


end
