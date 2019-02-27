Rails.application.routes.draw do
  resources :portfolios
  devise_for :users, controllers: {
    registrations: "user/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'portfolios#top'
end
