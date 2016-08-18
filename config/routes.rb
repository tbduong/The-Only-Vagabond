Rails.application.routes.draw do

  root to: 'welcome#splash'

  get '/' => 'welcome#splash'
end
