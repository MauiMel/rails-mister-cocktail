class Dose < ApplicationRecord
  # validates :name, uniqueness: true, presence: true
  validates :description, presence: true

  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
end
