Rails.application.routes.draw do
  resources :cicles do 
    resources :stages 
  end
  resources :products
  get 'estadistica/charts'
  get 'estadistica/years'
  resources :sales
  devise_for :users
  root 'sales#index'
  resources :employees
  resources :months
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
