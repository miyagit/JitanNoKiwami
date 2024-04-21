Rails.application.routes.draw do
  root "fields#index"
  devise_for :users
end
