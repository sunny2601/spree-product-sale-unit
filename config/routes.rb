Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :product_sale_units, only: [:index]
    end

    resources :sale_units
  end
end
