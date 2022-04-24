Rails.application.routes.draw do
  devise_for :users

  # Pages controller
  root 'pages#index'
  get  '/admin', to: 'pages#admin'

  get  '/auth/encode_token', to: 'auth#encode_token'
end
