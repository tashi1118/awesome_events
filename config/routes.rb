Rails.application.routes.draw do
  namespace :api do
    resources :welcome, only:[:index]
    get '/auth/sign_in' => 'auth#sign_in'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
