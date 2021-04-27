Rails.application.routes.draw do
 root 'docs_comm#home'
 post '/log_in', to: 'docs_comm#create'
 delete '/logout', to: 'docs_comm#destroy'
 
 get  '/signup',  to: 'users#new'
 resources :users
 resources :account_activations, only:[:edit]
 resources :password_resets,     only:[:new,:create,:edit,:update]
 resources :microposts,          only: [:show, :create, :destroy] do
  resources :comments,            only: [:create, :destroy]
 end
end
