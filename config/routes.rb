Rails.application.routes.draw do
  # get "/students", to: "students#index", as: "students" #index
  resources :students
  resources :enrollments, only: [:new, :create]
end
