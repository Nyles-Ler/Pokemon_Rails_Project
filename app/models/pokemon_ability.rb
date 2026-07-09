# 1.3 AR Models, 1.5 Two or more associations
class PokemonAbility < ApplicationRecord
  # Join table/model for normalization
  belongs_to :pokemon
  belongs_to :ability
end
