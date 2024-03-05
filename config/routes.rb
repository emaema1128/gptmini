Rails.application.routes.draw do
  root to: 'chatbots#index'
  get 'chatbots', to: 'chatbots#index'
  
  namespace :api do
    namespace :v1 do
      resources :chatbots
    end
  end
end