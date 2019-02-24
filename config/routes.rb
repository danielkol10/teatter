Rails.application.routes.draw do
  resources :teats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "teats#index"
end
