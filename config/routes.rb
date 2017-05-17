Rails.application.routes.draw do

  # 'admin/restaurants', to: 'admin/restaurants#index'
  namespace :admin do
    resources :restaurants, only: [:index]
  end

  resources :restaurants do
    # answers to urls of the pattern 'restaurants/SOMETHING'
    collection do
      # get 'restaurants/top', to: 'restaurants#top'
      get 'top', to: 'restaurants#top'
    end
    # pattern url 'restaurants/:id/SOMETHING'
    member do
      # get '/restaurants/:id/chef', to: 'restaurants#chef'
      get 'chef', to: 'restaurants#chef'
    end
    # GET /restaurants/:restaurant_id/reviews/new
    resources :reviews, only: [:new, :create]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
