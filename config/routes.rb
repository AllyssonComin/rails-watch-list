Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

# list routes
  # Pages routes
  root "pages#home"
  get "about", to: "pages#about"

  # List nested bookmarks routes
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  # Bookmarks routes
  resources :bookmarks, only: [:destroy]
end
