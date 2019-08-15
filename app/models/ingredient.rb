class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  # validates :cocktail, presence: true, uniqueness: true

  has_many :doses
end
