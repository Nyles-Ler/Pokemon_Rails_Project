# 1.3 AR Models, 1.5 Two or more associations, 1.6 Validations
# Feature 3.1, 3.2, and 4.1
# Handles the Pokemon collection, individual Pokemon pages, and search functionality
class Pokemon < ApplicationRecord
  # One Pokemon can have Many reviews - One - Many, dependent:destroy for no orphaned records
  has_many :reviews, dependent: :destroy

  # Pokemon can have Many Types - Many - Many
  # Join table normalization
  has_many :pokemon_types
  # Joining types to pokemon using the pokemon_types model
  has_many :types, through: :pokemon_types

  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves

  # Validations for pokemon
  validates :name, presence: true, uniqueness: true
  validates :pokedex_number, presence: true, uniqueness: true
  validates :height, numericality: { greater_than: 0 }
  validates :weight, numericality: { greater_than: 0 }
  validates :base_experience, numericality: { greater_than_or_equal_to: 0 }
  validates :sprite_url, presence: true

end
