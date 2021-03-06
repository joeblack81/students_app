Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  api_version(:module => "Api::V0", :path => {:value => "api/v0"})do
    resources :exams, only:[:index, :create, :update]
    resources :questions, only:[:index]
    resources :readings, only:[:show]
    resources :application_initiators, only: [:index]
  end
  api_version(:module => "Api::V1", :path => {:value => "api/v1"})do
    resources :exams, only:[:index, :create, :update]
    resources :questions, only:[:index]
    resources :readings, only:[:show]
    resources :application_initiators, only: [:index]
  end
end
