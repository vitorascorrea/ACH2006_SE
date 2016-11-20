class AddColumnsToIngredientsRecipe < ActiveRecord::Migration
  def change
    add_column :ingredients_recipes, :ingredient_id, :integer
    add_column :ingredients_recipes, :recipe_id, :integer
  end
end
