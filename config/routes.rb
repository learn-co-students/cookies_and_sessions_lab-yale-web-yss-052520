Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  get '/index', to: 'products#index'
  post '/index', to: 'products#add'
end
