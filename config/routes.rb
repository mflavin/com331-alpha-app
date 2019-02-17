Rails.application.routes.draw do
  root 'salaries#index', as: 'salaries_index'
  resources :salaries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
