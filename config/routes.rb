Rails.application.routes.draw do
get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "pages#index"
resources :pets
resources :users

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'

# get "/pets", to: "pets#index", as: "pets"
# post "/pets", to: "pets#create"
# get "/pets/new", to: "pets#new", as: "new_pet"
# get "/pets/:id", to: "pets#show", as: "pet"
# put "/pets/:id", to: "pets#update"
# patch "/pets/:id", to: "pets#update"
# delete "/pets/:id", to: "pets#destroy"
# get "/pets/:id/edit", to: "pets#edit", as: "edit_pet"

end
