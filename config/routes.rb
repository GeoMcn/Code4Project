Rails.application.routes.draw do
  resources :pins
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'pages/about'
   root 'project#index'
    
    resources :project do
        resources :task, only: [:show]
    end
    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
