Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "pages#index"
resources :pets

# get "/pets", to: "pets#index", as: "pets"
# post "/pets", to: "pets#create"
# get "/pets/new", to: "pets#new", as: "new_listing"
# get "/pets/:id", to: "pets#show", as: "listing"
# put "/pets/:id", to: "pets#update"
# patch "/pets/:id", to: "pets#update"
# delete "/pets/:id", to: "pets#destroy"
# get "/pets/:id/edit", to: "pets#edit", as: "edit_listing"

end
