Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :login
      # , only: [:create]

      resources :users, only: [:create]

      resources :locations, only: [:create]

      resources :days
    end
  end# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
