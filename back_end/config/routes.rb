Rails.application.routes.draw do
  resources :recipes, defaults: {format: :json}
  resources :ingredients, defaults: {format: :json}

  get '/filter_recipes/:ingredients', defaults: {format: :json}, to: 'recipes#filter'

  root to: 'application#index'
end
