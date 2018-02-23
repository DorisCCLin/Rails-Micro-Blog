Rails.application.routes.draw do
 

  get '/login', to: 'users#login_page'
  post '/users/:id/delete', to: 'users#destroy'
  post '/login', to: 'users#login'
  post '/logout', to: 'users#logout'
  root to: "welcome#welcome"
  resources :users 

  # resources :posts do
  # 	resouces :comment
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
