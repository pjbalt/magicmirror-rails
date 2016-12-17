Rails.application.routes.draw do
  root 'dash#index'
  
  get 'dash/index'
  get 'dash/bitstamp'
  get 'dash/time'
  get 'dash/date'
  get 'dash/forecast'

  resources :dashes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
