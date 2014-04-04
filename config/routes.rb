GroceryList::Application.routes.draw do

  resources :groceries
  #The above handles all routes below. Magic!

  # match('groceries', {:via => :get, :to => 'groceries#index'})
  # match('groceries/', {:via => :post, :to => 'groceries#create'})
  # match('groceries/:id', {:via => :get, :to => 'groceries#show'})
  # match('groceries/:id/edit', {:via => :get, :to => 'groceries#edit'})
  # match('groceries/:id', {:via => [:patch, :put], :to => 'groceries#update'})
  # match('groceries/:id', {:via => :delete, :to => 'groceries#destroy'})
end
