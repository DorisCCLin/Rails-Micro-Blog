Rails.application.routes.draw do
 



  get '/login', to: 'users#login_page'
  post '/login', to: 'users#login'
  post '/logout', to: 'users#logout'

  get '/comment/new', to: 'comments#new'

  



  root to: "welcome#show"
  resources :users 
  resources :posts
  resources :comments

  # resources :posts do
  	
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
