Rails.application.routes.draw do
  # ROOT - sets the default page when the application loads
  root "main#index"
  get "signup" => "users#new"
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"

  resources :users, except: %i[index new]

  resources :sessions, except: %i[index edit update show new destroy]

  resources :people do
    member { get :delete }
  end

  resources :addresses do
    member { get :delete }
  end

  resources :emails do
    member { get :delete }
  end

  resources :phone_numbers do
    member { get :delete }
  end
end
