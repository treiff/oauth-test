Rails.application.routes.draw do
  root to: 'oauths#index'

  get '/auth/callback', to: 'oauths#callback'
  get '/authentications', to: 'authentications#index'
end
