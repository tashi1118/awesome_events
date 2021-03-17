Rails.application.routes.draw do
  namespace :api do
    resources :welcome, only:[:index]
    post '/auth/sign_in' => 'auth#sign_in'
    get "/auth/:provider/callback" => "sessions#create"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
