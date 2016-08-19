Rails.application.routes.draw do

  root to: 'welcome#splash'

  get '/' => 'welcome#splash'

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
