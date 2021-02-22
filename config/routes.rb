Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mechanics
  get "/mechanics/:id/update", to: "mechanics#edit"
  patch "/mechanics/:id", to: "mechanics#update"

  resources :rides
end
