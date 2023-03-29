namespace :admin do
  resources :periods_vacations
  resources :employees
  resources :companies
  get 'dashboard/index'
  root to: 'dashboard#index'
end