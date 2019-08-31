Rails.application.routes.draw do
  root 'home#index'

  resources :recaudacions
  resources :apertura_monedas
  resources :apertura_billetes
  resources :premio_manuals
  resources :musuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
