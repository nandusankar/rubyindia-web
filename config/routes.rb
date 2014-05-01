RubyindiaWeb::Application.routes.draw do
  root 'home#index'
  get 'home/newsletter'
  resources :issues, only: [:show]
end
