Rails.application.routes.draw do
 root 'docs_comm#home'
 get '/home', to: 'docs_comm#home'
 post '/home', to: 'docs_comm#create'
 delete '/logout', to: 'docs_comm#destroy'
 
 get  '/signup',  to: 'users#new'
 resources :users
end
