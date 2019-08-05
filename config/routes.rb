Rails.application.routes.draw do
  resources :quizzes
  get "/quizzes/exam_gate/:id/:suborder" => "quizzes#exam_gate"
  get "/quizzes/exam/:id" => "quizzes#exam"
  post "/exam_check/:id" => "quizzes#exam_check"
  resources :user_materials
  resources :courses
  resources :materials
  resources :users
  root to: 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
