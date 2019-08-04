Rails.application.routes.draw do
  resources :user_materials
  resources :courses
  resources :materials
  resources :users
  get 'home/top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
