Rails.application.routes.draw do
  devise_for :users
  resources :collegemodules, path: 'home_modules'
  root 'home#index'
  get 'home/modules', to: 'home#modules', as: 'home_modules'
  get 'home/calendar', to: 'home#calendar', as: 'home_calendar'
  resources :events
end
