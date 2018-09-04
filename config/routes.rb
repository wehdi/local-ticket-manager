Rails.application.routes.draw do
  devise_for :users
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages do
    resources :comments
  end
  root 'messages#welcome'

  # Route to call method for close message
  get '/close/:id', to: 'messages#close', as: 'close'
  get '/archive/', to: 'messages#archive', as: 'archive'
end
