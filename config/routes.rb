Rails.application.routes.draw do
  get 'calendars/index'
  root 'home#index'

  devise_for :users
end
