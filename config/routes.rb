Rails.application.routes.draw do
  # Makes the homepage show the Pokemon index page
  root "pokemon#index"

  # Creates the About page route and generates the about_path helper
  get 'pokemon/about', to: 'pokemon#about', as: 'about'

  # Created routes for the Pokemon resource, but only for the index and show actions
  resources :pokemon, only: [:index, :show]

end
