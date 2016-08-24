Rails.application.routes.draw do

  root to: 'welcome#index'

  get '/' => 'welcome#index'

  get '/signup', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  get  '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update', as: 'update_user'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  resources :cities, shallow: true, only: [:index, :show] do
    resources :comments, except: [:index]
  end



  # get '/cities', to: 'cities#index', as: 'cities'
  # get '/cities/:id', to: 'cities#show', as: 'city'

  # get '/comments', to: 'comments#index', as: 'comments'
  # get '/comments/new', to: 'comments#new', as: 'new_comment'
  # get '/cities/:city_id/comments/:id', to: 'comments#show', as: 'comment'
  # post '/comments', to: 'comments#create'
  # get '/cities/:city_id/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  # patch '/cities/:city_id/comments/:id', to: 'comments#update'
  # delete '/comments/:id', to: 'comments#destroy'
end
