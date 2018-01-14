Rails.application.routes.draw do
  resources :roster_students
  # devise routes
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks#github" }
  devise_scope :user do
    get 'sign_out', :to => 'devise/sessions#destroy', :as => :signout
  end

  # courses routes
  post 'courses/:course_id/join' => 'courses#join', :as => :join_course
  post 'courses/:course_id/leave' => 'courses#leave', :as => :leave_course
  resources :courses do
    scope module: :courses do
      resources :roster_students 
    end
  end

  # home page routes
  resources :visitors
  root "visitors#index"
end
