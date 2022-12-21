Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/profile', to: 'profiles#show', as: 'profile'

  resources :eras, except: %i[destroy edit] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, except: %i[index new create delete]
end
