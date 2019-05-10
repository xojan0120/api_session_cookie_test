Rails.application.routes.draw do
  get 'sessions/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/save', to: 'sessions#save'
  get '/load', to: 'sessions#load'
end
