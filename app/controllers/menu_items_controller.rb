class MenuItemsController < ApplicationController
  
  def index
    @menu_items = MenuItem.all
    render :index
  end

  def new
    @menu_item = MenuItem.new
    render :new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      flash[:notice] = "Menu item successfully added!"
      redirect_to menu_items_path
    else
      render :new
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    render :edit
  end

  def show
    @menu_item = MenuItem.find(params[:id])
    render :show
  end

  def update
    @menu_item= MenuItem.find(params[:id])
    if @menu_item.update(menu_item_params)
      redirect_to menu_items_path
    else
      render :edit
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to menu_items_path
  end

  private
    def menu_item_params
      params.require(:menu_item).permit(:name_, :food_item1_, :food_item2_, :food_item3_)
    end
end