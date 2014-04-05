class GroceriesController < ApplicationController
  def index
    @grocery = Grocery.new
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
      @groceries = Grocery.all
      render('groceries/index.html.erb')
    end
  end

  def edit
    @grocery = Grocery.find(params[:id])
    render('groceries/edit.html.erb')
  end

  def update
    @grocery = Grocery.find(params[:id])
    if @grocery.update(params[:grocery])
        redirect_to('/groceries')
    else
      render('groceries/edit.html.erb')
    end
  end
    # if @grocery.update(params[:grocery])
    #   if params[:name]
    #     redirect_to("/groceries/#{@grocery.id}")
    #   elsif params[:checked]
    #     redirect_to :back
    #   else
    #   render('groceries/edit.html.erb')
    # end

  def destroy
    @grocery = Grocery.find(params[:id])
    @grocery.destroy
    redirect_to("/groceries")
  end
end
