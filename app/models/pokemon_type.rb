# 1.3 AR Models, 1.5 Two or more associations
class PokemonType < ApplicationRecord
  # Join table/model for rails to manage the relationships through Active Record
  # Connected the Many - Many relationships using another table, same as moves and abilities
  belongs_to :pokemon
  belongs_to :type
end
