Rails.application.routes.draw do
  patch '/goal_complete/:id', to: 'goals#complete_goal'

  resources :goals
  resource :session, only: [:new, :create, :destroy]
  resources :users
end
