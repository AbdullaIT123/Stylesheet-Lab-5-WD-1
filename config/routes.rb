Rails.application.routes.draw do
  resources :user_twos
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'quotes#index'
end
