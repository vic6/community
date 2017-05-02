Rails.application.routes.draw do
  get 'static_pages/home'
  get '/signup', to: 'tenants#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tenants
  resources :requests
  resources :packages

  root 'static_pages#home'
end
