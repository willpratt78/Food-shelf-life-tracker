def create 
  @food_product = FoodProduct.find(params[:food_product_id])
  @menu_item = @food_product.menu_item.new(menu_item_params)
  if @menu_item.save
    redirect_to food_product_path(@food_product)
  else 
    render :new
  end
end