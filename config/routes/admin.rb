namespace :admin do
  resources :companies
  get 'dashboard/index'
  root to: 'dashboard#index'
end