class CartItemsController < ApplicationController
  before_action :set_cart_item, only: %i[ show edit update destroy ]

  # GET /cart_items or /cart_items.json
  def index
    @cart_items = CartItem.all
  end

  # GET /cart_items/1 or /cart_items/1.json
  def show
  end

  # GET /cart_items/new
  def new
    @cart_item = CartItem.new
  end

  # GET /cart_items/1/edit
  def edit
  end

  # POST /cart_items or /cart_items.json
  def create
    @cart_item = CartItem.new(cart_id: current_user.cart.id, driving_course_id: params[:id])
      if @cart_item.save
        add_to_total
        redirect_to cart_path(current_user.cart.id)
      else
        redirect_to :root
      end
  end

  # PATCH/PUT /cart_items/1 or /cart_items/1.json
  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to cart_item_url(@cart_item), notice: "Cart item was successfully updated." }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1 or /cart_items/1.json
  def destroy
    if @cart_item.destroy 
     remove_to_total
     redirect_to cart_path(current_user.cart.id)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    def add_to_total
      cart = Cart.find(current_user.cart.id)
      cart.update(total:  (cart.total + @cart_item.driving_course.price))
    end

    def remove_to_total
      cart = Cart.find(current_user.cart.id)
      cart.update(total:  (cart.total - @cart_item.driving_course.price))
    end
  
end
