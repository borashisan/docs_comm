Rails.application.routes.draw do
 root 'docs_comm#home'
 get  '/signup',  to: 'users#new'
 resources :users
end
