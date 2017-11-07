Rails.application.routes.draw do
  root 'airports#index'
  resources :flights
  #resources:flights
end
