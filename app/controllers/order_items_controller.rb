class OrderItemsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @quantity = form_params[:quantity]
    @current_cart.order_items.create(product: @product, quantity: @quantity)
    redirect_to product_path(@product)
  end

  def form_params
    params.require(:order_item).permit(:quantity)
  end
end
