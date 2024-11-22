Rails.application.routes.draw do
  devise_for :profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :daily_energy_expenditures

  root "daily_energy_expenditures#new"
end
