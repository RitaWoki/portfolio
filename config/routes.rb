Rails.application.routes.draw do
  # devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # mount RailsAdmin::Engine => '/exit', as: 'rails_admin'
  root to: 'welcome#index'

  resources :users

  get "/log-in" => "sessions#new"

  post "/log-in" => "sessions#create"

  get "/log-out" => "sessions#destroy", as: :log_out

  resources :skills do
      resources :projects
   end

   resources :projects do
    resources :subprojects
  end

   get 'welcome/index'

   get 'welcome/about'

   get 'welcome/projects'

   get 'welcome/resume'

   get 'welcome/contact'

end

