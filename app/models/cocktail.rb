class Cocktail < ActiveRecord::Base
  has_many :doses
  validates :name, presence: true
  validates :name, uniqueness: {
    message: "Ce nom de cocktail est déjà pris, veuillez en selectionner un autre." }
end
