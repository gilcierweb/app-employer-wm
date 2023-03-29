namespace :admin do
  resources :employees
  resources :companies
  get 'dashboard/index'
  root to: 'dashboard#index'
end