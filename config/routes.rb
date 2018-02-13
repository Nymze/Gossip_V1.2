Rails.application.routes.draw do
  devise_for :users
  resources :gossips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'gossips#index'

end
