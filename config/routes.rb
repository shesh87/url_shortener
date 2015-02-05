Rails.application.routes.draw do

  get "/" => "shortener#new"
  post "/" => "shortener#create", as: "urls"
  get "/url" => "shortener#show"
  get "url/:id" => "shortener#redirect"


end
