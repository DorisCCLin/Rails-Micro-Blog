Rails.application.routes.draw do
 


  post '/users/:id/delete', to: 'users#destroy'
  root to: "welcome#welcome"
  resources :users 

  # resources :posts do
  # 	resouces :comment
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
