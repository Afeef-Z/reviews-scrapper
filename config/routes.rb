Rails.application.routes.draw do
  root "reviews#new"

  resources :reviews, only: %i[new index]
end
