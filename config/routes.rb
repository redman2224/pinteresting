Pinteresting::Application.routes.draw do
  resources :pins

  # devise_for :users
  root "pins#index"
  get "about" => "pages#about"
  get "contact" => "pages#contact"

devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                   controllers: {omniauth_callbacks: "omniauth_callbacks"}
end
