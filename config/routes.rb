
Rails.application.routes.draw do

  get 'pages/term'
  resources :maintenances
  resources :materials
  resources :cities
  resources :engines

  devise_for :users

 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
