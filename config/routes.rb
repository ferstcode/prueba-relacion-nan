Rails.application.routes.draw do
  devise_for :users
  get 'homeworks', to: 'homeworks#index'
  get 'homeworks/:id', to: 'homeworks#show', as: 'homework'


  root 'homeworks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
