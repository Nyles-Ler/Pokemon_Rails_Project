Rails.application.routes.draw do
  get 'types/index'
  get 'types/show'
  # Makes the homepage show the Pokemon index page
  root "pokemon#index"

  # Creates the About page route and generates the about_path helper
  get 'pokemon/about', to: 'pokemon#about', as: 'about'

  # Created route for Pokemon, only for the index and show actions
  resources :pokemon, only: [:index, :show]

  # 3.4 Hierarchical Collection Navigation - created route for Types
  resources :types, only: [:index, :show]
end
