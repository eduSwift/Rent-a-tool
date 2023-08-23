Rails.application.routes.draw do
  devise_for :users
  root to: "tools#index"
  get 'search', to: "search#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "pages/home", to: "pages#home"
  resources :tools do
    resources :bookings, only: %i[new create show destroy]
  end
end
