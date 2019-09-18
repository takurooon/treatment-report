Rails.application.routes.draw do
  
  root 'reports#index'
  
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  
  devise_for :users

  resources :reports
  
  get 'reports/index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
