Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :dishes, only: [:show]

  resources :chefs, only: [:show]

  post "/dishes/:id/ingredients", to: "dish_ingredients#create"
  get "/chefs/:id/ingredients", to: "chef_ingredients#index"
end
