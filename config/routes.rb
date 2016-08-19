Rails.application.routes.draw do

  root to: 'welcome#splash'

  get '/' => 'welcome#splash'

  get '/signup', to: 'users#new', as: 'new_user'
  get '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
