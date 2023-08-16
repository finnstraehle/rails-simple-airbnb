Rails.application.routes.draw do
  resources :flats do
    collection do
      get 'admin'
    end
  end
end
