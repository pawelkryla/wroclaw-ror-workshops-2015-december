Rails.application.routes.draw do

  devise_for :users
  root 'visitors#index'

  resources :students, :teachers do
    get :subjects
  end

  namespace :report do
    get :subjects
  end

end
