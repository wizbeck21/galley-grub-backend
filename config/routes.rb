Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # Start Resources
      resources :orders do
        collection do
          get :best_customers
        end
      end
      resources :items do
        get :active
      end
      resources :toppings
      resources :order_items
      resources :item_toppings
      resources :order_item_toppings
      # End Resources
    end
  end
end
