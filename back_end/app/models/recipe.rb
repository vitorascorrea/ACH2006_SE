class Recipe < ActiveRecord::Base
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  def self.filter_recipes(ingredients)
    ingredients[0] = ''
    ingredients[ingredients.length-1] = ''
    array = ingredients.split(',')
    recipes = []
    for ingredient in array
      query = Recipe.joins(:ingredients_recipes).where(:ingredients_recipes => {:ingredient_id => ingredient})
      recipes.concat query unless query.length == 0
    end
    recipes.uniq
  end
end
