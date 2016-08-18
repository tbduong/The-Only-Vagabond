Rails.application.routes.draw do

  root to: 'welcome#splash'

  get '/' => 'welcome#splash'

  get '/signup', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
end
