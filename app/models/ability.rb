# 1.3 AR Models, 1.5 Two or more associations, 1.6 Validations
class Ability < ApplicationRecord
  has_many :pokemon_abilities
  has_many :pokemons, through: :pokemon_abilities

  validates :name, presence: true, uniqueness: true
  validates :effect, presence: true
end
