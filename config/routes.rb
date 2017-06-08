Rails.application.routes.draw do
    
  get 'posts/new'

  get 'posts/create'

  get 'posts/index'

  root 'index#new'

  get '/signin',    to: 'sessions#new'
  post '/signin',   to: 'sessions#create'
  delete 'signout', to: 'sessions#delete'
  resources :posts, only: [:new, :create, :index]
end
