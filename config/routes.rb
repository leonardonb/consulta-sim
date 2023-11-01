Rails.application.routes.draw do
  resources :consultas
  resources :pacientes
  resources :enderecos
  resources :medicos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
