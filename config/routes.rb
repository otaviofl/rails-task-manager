Rails.application.routes.draw do
  # resources :tasks # this line will replace all the 7 get commands below.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :tasks


  # get "tasks", to: "tasks#index"
  # get "tasks/new", to: "task#new"
  # post "tasks", to: "tasks#create"
  # get "task/:id", to: "task#show"
  # get "task/:id/edit", to: "task#edit"
  # patch "task/:id", to: "task#update"
  # delete "task/:id", to: "task#destroy"
end

# < get 'tasks' > isso eh o que colocamos no browser

