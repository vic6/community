Rails.application.routes.draw do
  root 'static_pages#home'

  resources :tenants
  resources :requests
  resources :packages

  get 'static_pages/home'
  get '/signup', to: 'tenants#new'
  post '/signup', to: 'tenants#create'
end
