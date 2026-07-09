# 1.3 AR Models, 1.5 Two or more associations, 1.6 Validations
class Move < ApplicationRecord
  has_many :pokemon_moves
  has_many :pokemons, through: :pokemon_moves

  validates :name, presence: true, uniqueness: true
  validates :power, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :accuracy, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_nil: true
end
