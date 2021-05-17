Rails.application.routes.draw do
  root to: 'pages#index'
  get '/earth', to:  'pages#earth', as: :earth
  get '/mars', to: 'pages#mars', as: :mars
end
