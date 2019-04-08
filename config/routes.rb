Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'staticepages#home'
  get  'staticepages/home'
  get  'staticepages/help'
  get  'staticepages/about'
  get  'staticepages/contact'
  get '/signup' , to:'users#new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
