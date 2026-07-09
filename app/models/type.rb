# 1.3 AR Models, 1.5 Two or more associations, 1.6 Validations
# Feature 3.4 - Hierarchical Collection Navigation
# Allows users to browse Pokemon by Type
class Type < ApplicationRecord
  # Types can belong to Many Pokemon
  has_many :pokemon_types
  has_many :pokemon, through: :pokemon_types

  validates :name, presence: true, uniqueness: true
end
