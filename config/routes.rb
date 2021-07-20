Rails.application.routes.draw do
  namespace :contracts do
    resource :bulk_uploads, only: [:create]
  end

  resources :contracts
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
