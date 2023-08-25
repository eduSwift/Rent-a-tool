Rails.application.routes.draw do
  devise_for :users
  root to: "tools#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "pages/home", to: "pages#home"
  # get "pages/:id/home", to: "pages#filter"

  resources :tools do
    resources :bookings, only: %i[new create show destroy edit update]

  end
end
