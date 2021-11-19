Rails.application.routes.draw do
  root to: 'restaurants#index'
  Rails.application.routes.draw do
    resources :restaurants, only: [ :index, :show ] do
      resources :reviews, only: :create
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
