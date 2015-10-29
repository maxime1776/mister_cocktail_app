class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
  #{
    #message: "Ce nom de cocktail est déjà pris, veuillez en selectionner un autre." }
end
