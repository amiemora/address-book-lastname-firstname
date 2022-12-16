Rails.application.routes.draw do
  # ROOT - sets the default page when the application loads
  root "main#index"

  get "main/index"

  resources :people do
    member { get :delete }
  end

  # get 'people/index'
  # get 'people/show'
  # get 'people/new'
  # get 'people/edit'
  # get 'people/delete'
end
