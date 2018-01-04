Rails.application.routes.draw do
  get "users/edit"

  get "mytours/home"

  root "mytours#home"
end
