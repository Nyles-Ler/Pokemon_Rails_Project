# 1.3 AR Models, 1.5 Two or more associations
class PokemonMove < ApplicationRecord
  # Join table/model
  belongs_to :pokemon
  belongs_to :move
end
