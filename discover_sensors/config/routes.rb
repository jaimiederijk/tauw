Rails.application.routes.draw do
  get 'home/index'

  resources :sensors

  root 'home#index'

  get '/sensors' => 'sensors#index'
  get  '/sensors/:id' => 'sensors#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
