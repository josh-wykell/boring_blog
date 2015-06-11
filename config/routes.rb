Rails.application.routes.draw do
  resources :posts
  resources :comments, :only => [:create]
  resource :session, :only => [:create, :destroy]
  
  get '/post/:id', to: 'home#show', as: 'show_post'

  root'home#index'
end
