RubyindiaWeb::Application.routes.draw do
  root 'home#index'
  get 'home/newsletter'

end
