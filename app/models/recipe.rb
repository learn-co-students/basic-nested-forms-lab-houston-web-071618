class Recipe < ActiveRecord::Base
  has_many :ingredients
  validates :title, presence: true
  accepts_nested_attributes_for :ingredients

  def r_ingredients
    Ingredient.all.select do |ing|
      ing.recipe_id == self.id
    end
  end

end
