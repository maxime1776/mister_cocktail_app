class Ingredient < ActiveRecord::Base
  has_many :doses
  before_destroy :check_for_cocktails
  has_many :cocktails, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true





 private

 def check_for_cocktails
   if doses.count > 0
     errors.add_to_base("cannot delete doses while ococktails exist")
     return false
   end
 end

end
