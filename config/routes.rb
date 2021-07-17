Rails.application.routes.draw do
  root 'static_pages#home' ,as:"root"
  get "/help",to:"static_pages#help",as:"help"
  get "/contact",to:"static_pages#contact",as:"contact"
  get "/about",to:"static_pages#about",as:"about"
  get "/signup",to:"user#new",as:"signup"
  get "/user/:id",to:"user#show",as:"show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
