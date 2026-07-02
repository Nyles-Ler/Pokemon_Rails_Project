class PokemonController < ApplicationController
  def index
    # Retrieves all Pokemon records from the database and assigns them to the @pokemon instance variable
    @pokemon = Pokemon.all
  end

  def show
    # Finds a specific Pokemon by its ID from the params and assigns it to the @pokemon instance variable
    @pokemon = Pokemon.find(params[:id])
  end
end
