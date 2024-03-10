Rails.application.routes.draw do
  root to: 'chatbots#index'
  get 'chatbots', to: 'chatbots#index'

  resources :chatbots
end