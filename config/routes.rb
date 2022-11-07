Rails.application.routes.draw do
  resources :clients, only: [:index, :show, :update]
  resources :gyms, only: [:index, :show, :update, :destroy] do 
    resources :memberships, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
