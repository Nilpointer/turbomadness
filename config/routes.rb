Rails.application.routes.draw do
  root to: "model1s#index"
  resources :model2s
  resources :model1s
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
