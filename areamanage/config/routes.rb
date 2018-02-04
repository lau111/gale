Rails.application.routes.draw do
  get "holeareamap/show"

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :addresskarimasters, :admins

  # ADD root by GALE 2018/1/23
  root to: "addresskarimasters#index"

  root 'addresskarimasters#index'
end
