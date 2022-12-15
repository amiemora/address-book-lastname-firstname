Rails.application.routes.draw do

  # ROOT - sets the default page when the application loads 
  root "main#index"

  get 'main/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
