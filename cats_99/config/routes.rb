Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats, :cat_rental_requests
  patch 'approve_rental', to: 'cat_rental_request#approve!'
end
