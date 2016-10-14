Rails.application.routes.draw do
  root to: 'home#index'

  get 'auth/:provider/callback', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
