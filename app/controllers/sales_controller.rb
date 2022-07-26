class SalesController < ApplicationController
  
  def index
    @sales = Sale.all
    render :index
  end

  private
    def sales_params
      params.require(:sales).permit(:name_, :food_item1_, :food_item2_, :food_item3_)
    end
end