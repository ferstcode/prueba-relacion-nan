Rails.application.routes.draw do
  devise_for :users
  resources :homeworks, only: %i[index show] do
  resources :homework_users, only: %i[create destroy]
  end
  

  root 'homeworks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
