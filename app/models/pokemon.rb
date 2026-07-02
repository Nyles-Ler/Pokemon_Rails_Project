class Pokemon < ApplicationRecord
  has_many :reviews, dependent: :destroy

  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves

  validates :name, presence: true, uniqueness: true
  validates :pokedex_number, presence: true, uniqueness: true
  validates :height, numericality: { greater_than: 0 }
  validates :weight, numericality: { greater_than: 0 }
  validates :base_experience, numericality: { greater_than_or_equal_to: 0 }
  validates :sprite_url, presence: true

end
