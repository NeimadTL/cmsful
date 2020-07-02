Rails.application.routes.draw do
  resources :user_atrribute_values
  resources :users
  resources :user_attributes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
