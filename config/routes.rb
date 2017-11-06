Rails.application.routes.draw do
  root 'airports#index'
  get '/flights', to: 'flights#index'
  #resources:flights
end
