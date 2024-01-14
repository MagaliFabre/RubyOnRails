Rails.application.routes.draw do
  devise_for :views
  devise_for :users

resources :users, only: [:show]

  # ... (autres routes)

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "home#index" unless Rails.application.routes.named_routes[:root]

  resources :activities

  get 'activities/new/:activity_name', to: 'activities#new', as: 'create_activity'
  get 'activities/edit/:id', to: 'activities#edit', as: 'custom_edit_activity'
  
  delete 'activities/:id', to: 'activities#destroy', as: 'custom_delete_activity'



end
