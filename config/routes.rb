Rails.application.routes.draw do
  resources :workouts
  root :to => 'weeks#index'

  resources :weeks do
    end

end
