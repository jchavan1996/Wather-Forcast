Rails.application.routes.draw do
  root 'weather_api#index'
  post 'show', to: 'weather_api#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
