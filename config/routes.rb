Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'movies', to: 'movies#index'

  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:id/bookmarks', to: 'bookmark#create'

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists'

  # Defines the root path route ("/")
  # root "posts#index"
end
