Rails.application.routes.draw do
  devise_for :users
  root 'portfolios#index'
end
