class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cook_time
      t.text :how_to

      t.timestamps null: false
    end
  end
end
