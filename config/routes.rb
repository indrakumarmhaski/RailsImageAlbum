Rails.application.routes.draw do
  
  get 'pages/myalbum'
  resources :albums
  devise_for :users
  get 'pages/index'
  get 'pages/about'
  

  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
