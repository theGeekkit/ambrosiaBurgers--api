class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # GET /orders
  def index
    @orders = Order.all

    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  def checkout
    # Implement the checkout logic here
    user = current_user
    order = Order.new(user: user, status: 'pending')
    if order.save

    else

    end
  end

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def add_items_to_order
    order = Order.new
    order.save
  
    item_params = params[:items]
    item_params.each do |item_param|
      item = Item.new(item_param)
      item.order = order
      item.save
    end

    drink_params = params[:drinks]
    drink_params.each do |drink_param|
      drink = Drink.new(drink_param)
      drink.order = order
      drink.save
    end
  
    custard_params = params[:custards]
    custard_params.each do |custard_param|
      custard = Custard.new(custard_param)
      custard.order = order
      custard.save
    end
  
    # possibly how to do it???
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:name)
    end
end
