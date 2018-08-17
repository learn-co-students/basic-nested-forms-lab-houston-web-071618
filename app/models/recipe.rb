class Recipe < ActiveRecord::Base
  has_many :ingredients
  # accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)
    # byebug
    # ingredient_attributes = [
        # { :ingredient_name => "ingredient 1", :ingredient_qty => "1" },
        # { :ingredient_name => "ingredient 2", :ingredient_qty => "2" }
    # ]
    ingredients_attributes.each do |ingredient_attributes|
      # byebug
      # assign each ingredient attribute to a variable to be able to call it in the view
      # want to associate each ingredient_attributes with the recipe so use build and self to associate with the current recipe
      self.ingredients.build(ingredient_attributes.last)
    end
  end



end
