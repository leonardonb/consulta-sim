Rails.application.routes.draw do
   root 'home#index'

  get '/consultas/search', to: 'consultas#search', as: 'search_consulta'
  get '/medicos/search', to: 'medicos#search', as: 'search_medicos'
  get '/pacientes/search', to: 'pacientes#search', as: 'search_pacientes'
  get 'new_consulta', to: 'consultas#new', as: 'new_consulta'
  post '/new_consulta', to: 'consultas#create'
  patch '/consultas/:id', to: 'consultas#update', as: :consulta_update

  resources :consultas
  resources :pacientes
  resources :medicos
end
