Rails.application.routes.draw do

  root 'clinic_reports#index'
  
  devise_for :users

  resources :reports
  resources :clinic_reports

  get 'reports/index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end