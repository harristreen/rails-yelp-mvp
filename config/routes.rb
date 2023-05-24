Rails.application.routes.draw do
  get '/restaurants/', to: 'restaurants#index', as: 'restaurants'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
end
