class PokemonController < ApplicationController
  def index
    if params[:search].present?
      @pokemon = Pokemon.where("name LIKE ?", "%#{params[:search]}%")
    else
      @pokemon = Pokemon.all
    end

    #
    @pokemon = @pokemon.order(:pokedex_number).page(params[:page]).per(8)

  end

  def show
    # Finds a specific Pokemon by its ID from the params and assigns it to the @pokemon instance variable
    @pokemon = Pokemon.find(params[:id])
  end

  def about

  end
end
