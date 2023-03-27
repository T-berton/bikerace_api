Rails.application.routes.draw do
  resources :submissions
  resources :locations
  resources :riders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
