Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :login
      # , only: [:create]

      resources :users

      resources :days


      # resources :users do
      #   resources :days
      # end

      # get 'users/dates/:id' => "users#suggestion"

      resources :locations, only: [:create]


    end
  end# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
