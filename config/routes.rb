Rails.application.routes.draw do
  devise_for :users

  # Pages controller
  root 'pages#index'

  # Settings controller
  resource :setting, only: [:edit, :update]

  # Auth controller
  get  '/auth/encode_token', to: 'auth#encode_token'
end
