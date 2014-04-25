RubyindiaWeb::Application.routes.draw do
  root 'home#index'
  get 'home/newsletter'
  get 'issues/1', to: 'issues#show'
end
