Rails.application.routes.draw do
  root to: "chatbots#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :chat, only: [:create]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
