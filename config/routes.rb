Rails.application.routes.draw do
  devise_for :users
  resources :concertevents
  root to: redirect('/concertevents')
end
