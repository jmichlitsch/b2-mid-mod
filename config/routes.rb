Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/mechanics", to: "mechanics#index", as: :mechanics
  get "mechanics/new", to: "mechanics#new", as: :mechanics_new
  get "/mechanics/:id/edit", to: "mechanics#edit", as: :mechanics_edit
  get "/mechanics/:id", to: "mechanics#show", as: :mechanics_show
  post "/mechanics", to: "mechanics#create"

  resources :rides
end
