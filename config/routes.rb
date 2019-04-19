Rails.application.routes.draw do
  resources :cicles
  get 'estadistica/charts'
  resources :sales
  devise_for :users
  root 'products#index'
  resources :employees
  resources :products
  resources :months
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
