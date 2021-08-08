Rails.application.routes.draw do
  root 'static_pages#home' ,as:"root"
  get "/help",to:"static_pages#help",as:"help"
  get "/contact",to:"static_pages#contact",as:"contact"
  get "/about",to:"static_pages#about",as:"about"
  get "/user",to:"users#index",as:"index"
  get "/user/:id",to:"users#show",as:"show"
  get "/signup",to:"users#new",as:"signup"
  post  "/signup",to:"users#creat"
  patch "/user/:id",to:"users#update",as:"update"
  delete "/user/:id",to:"users#destroy",as:"delete"
  get "/user/:id/edit",to:"users#edit",as:"edit"
  get '/login',to:"sessions#new",as:"login"
  post '/login',to: "sessions#creat"
  delete '/logout',to:"sessions#destroy", as:"logout"
  post "/microposts",to:"microposts#create",as:"microposts"
  delete "/microposts/:id",to:"microposts#destroy",as:"micropost"
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,only: [:new, :create, :edit, :update]
  resources :microposts,only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
