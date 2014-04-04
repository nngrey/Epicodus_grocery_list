GroceryList::Application.routes.draw do
  match('groceries', {:via => :get, :to => 'groceries#index'})
  match('groceries', {:via => :post, :to => 'groceries#create'})
  match('groceries/:id', {:via => :get, :to => 'groceries#show'})

end
