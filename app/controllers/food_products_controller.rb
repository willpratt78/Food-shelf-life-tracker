class FoodProductController < ApplicationController
  def index
    @food_products = FoodProduct.all
    render :index
  end

  def new
    @food_product = FoodProduct.new
    render :new
  end

  def create
    @food_product = FoodProduct.new(food_product_params)
    if @food_product.save
      redirect_to food_products_path
    else
      render :new
    end
  end

  def edit
    @food_product = FoodProduct.find(params[:id])
    render :edit
  end

  private
    def food_product_params
      params.require(:food_product).permit(:food_, :amount_ordered_, :amount_to_sell_, :amount_of_pans_, :orders_per_pan_, :date_ordered_, :date_order_arrives_, :soft_out_date_, :hard_out_date_)
    end
end