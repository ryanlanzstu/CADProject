Rails.application.routes.draw do
  resources :collegemodules
  root 'home#index'

  get 'home/modules', to: 'home#modules', as: 'home_modules'

  get 'home/calendar', to: 'home#calendar', as: 'home_calendar'
  
end
