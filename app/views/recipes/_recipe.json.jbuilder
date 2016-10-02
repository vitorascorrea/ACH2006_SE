json.extract! recipe, :id, :name, :cook_time, :how_to, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)