class AddUnitToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :unit, :string
  end
end
