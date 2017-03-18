Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/exit', as: 'rails_admin'
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/projects'

  get 'welcome/resume'

  get 'welcome/contact'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

    root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
