Rails.application.routes.draw do
 root 'docs_comm#home'
 post '/', to: 'docs_comm#create'
 delete '/logout', to: 'docs_comm#destroy'
 
 get  '/signup',  to: 'users#new'
 resources :users
 resources :account_activations, only:[:edit]
 resources :password_resets,    only:[:new,:create,:edit,:update]
end
