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
      flash[:notice] = "Product successfully added!"
      redirect_to food_products_path
    else
      render :new
    end
  end

  def edit
    @food_product = FoodProduct.find(params[:id])
    render :edit
  end

  def show
    @food_product = FoodProduct.find(params[:id])
    render :show
  end

  def update
    @food_product= FoodProduct.find(params[:id])
    if @food_product.update(food_product_params)
      redirect_to food_products_path
    else
      render :edit
    end
  end

  def destroy
    @food_product = FoodProduct.find(params[:id])
    @food_product.destroy
    redirect_to food_products_path
  end

  private
    def food_product_params
      params.require(:food_product).permit(:food_, :amount_ordered_, :amount_to_sell_, :amount_of_pans_, :orders_per_pan_, :date_ordered_, :date_order_arrives_, :soft_out_date_, :hard_out_date_)
    end
end