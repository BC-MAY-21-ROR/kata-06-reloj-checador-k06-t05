Rails.application.routes.draw do
  
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'admin/dashboard'
  get 'records/employees_records'
  root to:"home#index"
  
  resources :admin, :employees, :companies

end
