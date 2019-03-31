Rails.application.routes.draw do
  resources :workouts
  root :to => 'workouts#index'

  resources :workouts do
    end

end
