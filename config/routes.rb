Rails.application.routes.draw do
  root 'home#index'
  get '/etudiants', to: 'home#students'
  get '/ecoles', to: 'home#schools'
  get '/journalistes', to: 'home#journalists'

end
