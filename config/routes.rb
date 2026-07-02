Rails.application.routes.draw do
  get 'pokemon/index'
  get 'pokemon/show'

  # Makes the homepage show the Pokemon index page
  root "pokemon#index"

  # Created routes for the Pokemon resource, but only for the index and show actions
  resources :pokemon, only: [:index, :show]

end
