resources :pages, only: [:about, :terms, :privacy, :faq, :how_it_works, :contacts, :send_contacts] do
    collection do
      get 'about'
      get 'terms'
      get 'privacy'
      get 'faq'
      get 'how_it_works'
      get 'contacts'  
      post 'send_contacts', to: 'pages#send_contacts'
    end
  end

  devise_for :users
    
  get 'home/index'
  root to: 'home#index'
  
  match '*unmatched', to: 'application#route_not_found', via: :all