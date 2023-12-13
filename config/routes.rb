Rails.application.routes.draw do
  root 'home#index'

  get 'home/modules', to: 'home#modules', as: 'home_modules'
  get 'home/calendar', to: 'home#calendar', as: 'home_calendar'

  # Use resources for CRUD operations on collegemodules with the desired path
  resources :collegemodules, path: 'home_modules'
end
