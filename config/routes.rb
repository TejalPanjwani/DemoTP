Rails.application.routes.draw do

  root 'staticepages#home'
  get  'staticepages/home'
  get  'staticepages/help'
  get  'staticepages/about'
  get  'staticepages/contact'
  get '/signup' , to:'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
