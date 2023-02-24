Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'restaurants#index'
  resources :restaurants do
    collection do
      get :top
    end

    resources :reviews, shallow: true, only: %i[new create destroy]
  end
end
