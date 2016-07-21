class DeliveryInfosController < ApplicationController

  def new
    @deliveryInfo = DeliveryInfo.new
  end

  def create
    if (Volunteer.exists?(:user_id => current_user.id)&&!(Book.exists?(:user_id => current_user.id)))
    @deliveryInfo = DeliveryInfo.new(delivery_params)
    @deliveryInfo.cart_id = params[:cart_id]
    @deliveryInfo.delivered_to = params[:delivered_to]
    @book.save
       flash[:success] = 'Delivery information was successfully added.'
      redirect_to '/'
    else
      flash[:danger] = 'There was a problem creating Delivery information.'
      render :new
    end
  end
end
