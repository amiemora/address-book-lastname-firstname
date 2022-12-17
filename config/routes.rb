Rails.application.routes.draw do
  get 'addresses/index'
  get 'addresses/show'
  get 'addresses/new'
  get 'addresses/create'
  get 'addresses/edit'
  get 'addresses/update'
  get 'addresses/delete'
  get 'addresses/destroy'
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
