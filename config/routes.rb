Rails.application.routes.draw do
    
  root 'index#new'

  get '/signin',    to: 'sessions#new'
  post '/signin',   to: 'sessions#create'
  delete 'signout', to: 'sessions#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
