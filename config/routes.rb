Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "user/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root :to => 'portfolios#index'
  root 'portfolios#index'
end
