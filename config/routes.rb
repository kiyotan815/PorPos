Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "user/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'portfolios#index'
end
