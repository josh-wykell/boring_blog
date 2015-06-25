Rails.application.routes.draw do
  resources :posts
  resources :comments, :only => [:create]
  resources :charges
  resource :session, :only => [:create, :destroy]
  
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  
  get 'tags/:tag', to: 'posts#index', as: "tag"

  root'home#index'
end
