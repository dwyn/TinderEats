Rails.application.routes.draw do
  
  resources :restaurants do
    resources :reviews
  end
  
  resources :contacts
  resources :cuisne
  resources :location
end
