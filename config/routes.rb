Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :stores, only: %i[index show]
      resources :ratings, only: %i[create]
      resources :google_stores, only: %i[index show]
    end
  end
end
