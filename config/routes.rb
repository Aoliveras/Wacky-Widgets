Rails.application.routes.draw do
  root to: "widgets#index"
  resources :widgets
end
