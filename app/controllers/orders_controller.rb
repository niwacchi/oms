class OrdersController < ApplicationController
  def index
    unless logged_in?
      session[:callback] = orders_index_path
      return redirect_to login_path
    end
    @orders = Order.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
