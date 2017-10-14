Rails.application.routes.draw do

  resources :artists
  root "artists#index"
  resources :artists do
    resources :songs
  end
end
