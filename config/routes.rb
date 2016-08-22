Rails.application.routes.draw do

  root to: 'welcome#splash'

  get '/' => 'welcome#splash'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get '/cities', to: 'cities#index', as: 'cities'
  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/comments', to: 'comments#index', as: 'comments'
  get "/comments/new", to: "comments#new", as: "new_comment"
  get "cities/:id/comments/:id", to: "comments#show", as: "comment"
  post "/comments", to: "comments#create"
  delete "/comments/:id", to: "comments#destroy", as: "delete_comment"
end
