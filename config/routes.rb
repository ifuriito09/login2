Rails.application.routes.draw do

  resource :sessions, only: [:create, :destroy,:new]
  get 'registrations/new'
  get 'tweets/index'
  get 'registrations/create'
  post 'registrations/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
