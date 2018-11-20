Rails.application.routes.draw do
  resources :registration_courses
  resources :course_offerings
  resources :courses
  devise_for :users

  root 'course_offerings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
