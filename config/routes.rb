Rails.application.routes.draw do
  root "categories#index"
  devise_for :users
  resources :categories
  resources :category_quiz_questions do
    resources :category_question_choices
  end
  resources :user_answers
end
