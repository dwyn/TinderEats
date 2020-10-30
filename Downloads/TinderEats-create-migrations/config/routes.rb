Rails.application.routes.draw do
  
  resources :restaurants do
    resources :reviews
  end

  resources :restaurants do
    resources :contacts
  end
  
  resources :users 

  # resources :users do
  #   resources :reviews
  # end 
  
  resources :contacts

  resources :cuisne do 
    resources :restaurants, only: [:index, :show]
  end 

  resources :location
end