Rails.application.routes.draw do
  get "/" => "home#top"
  post "/makeIdea" => "home#makeIdea"
  post "/create" => "home#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
