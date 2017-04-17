Rails.application.routes.draw do

  scope :api do
    resources :messages
    resources :comments
    resources :categories
    resources :pictures
    resources :jobs
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/github', to: 'oauth#github'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
