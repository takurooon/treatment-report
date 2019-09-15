Rails.application.routes.draw do
  root 'reports#index'

  resources :reports
  
  get 'reports/index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
