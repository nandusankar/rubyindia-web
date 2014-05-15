RubyindiaWeb::Application.routes.draw do
  root 'home#index'
  get 'home/newsletter'
  post 'home/submit_link'
  resources :issues, only: [:show]
end
