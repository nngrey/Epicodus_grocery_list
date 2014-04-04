class GroceriesController < ApplicationController
  def index
    @groceries = Grocery.all
    render('groceries/index.html.erb')
  end

  def show
    @grocery = Grocery.find(params[:id])
    render('groceries/show.html.erb')
  end

  def create
    @grocery = Grocery.new(params[:grocery])
    if @grocery.save
      redirect_to('/groceries')
    else
      render('groceries/index.html.erb')
    end
  end
end
