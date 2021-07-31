Rails.application.routes.draw do
  root 'static_pages#home' ,as:"root"
  get "/help",to:"static_pages#help",as:"help"
  get "/contact",to:"static_pages#contact",as:"contact"
  get "/about",to:"static_pages#about",as:"about"  
  get "/user/:id",to:"users#show",as:"show"
  get "/signup",to:"users#new",as:"signup"
  post  "/signup",to:"users#creat"
  get '/login',to:"sessions#new",as:"login"
  post '/login',to: "sessions#creat"
  delete '/logout',to:"sessions#destroy", as:"logout"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
