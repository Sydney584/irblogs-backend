Rails.application.routes.draw do
  resources :comments, only: [:create, :update, :destroy]
  resources :blogposts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  
  
  # get '/blogposts/comments', to: 'bloposts#comments'
  # get '/blogposts/:id', to: 'blogposts#show'
  # get '/users/:id', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
