Rails.application.routes.draw do
  root to: 'flats#index'
  get 'admin', to: 'pages#admin', as: :admin



  resources :flats
end
