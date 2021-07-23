Rails.application.routes.draw do
  
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'admin/dashboard'
  root to:"home#index"
 get 'admin/employees', to:"employees#employee"
  resources :employees
end
