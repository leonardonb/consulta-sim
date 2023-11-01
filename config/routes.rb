Rails.application.routes.draw do
  resources :pacientes
  resources :enderecos
  resources :medicos
  resources :consulta
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
