Rails.application.routes.draw do
  
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"

  get     "register"    => "sessions#register"
  get      "home"    => "users#home"
  resources :users
  resources :teachers
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
