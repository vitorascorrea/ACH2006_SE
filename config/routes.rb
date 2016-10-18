Rails.application.routes.draw do
  resources :recipes, defaults: {format: :json}
  resources :ingredients, defaults: {format: :json}
  root to: 'application#index'
end
