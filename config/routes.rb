Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  root to: 'recipes#index'
end
