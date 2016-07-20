class CartController < ApplicationController
  before_filter :authenticate_user!
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
   cart = Cart.new
  #  volunteer = Volunteer.new
   cart.book_id = params[:book_id]
  #  cart.volunteer_id = volunteer.where(volunteer_id: = current_user.id)
   cart.volunteer_id = current_user.id
    if cart.save
       flash[:success] = 'Book was successfully added to Cart'
      redirect_to '/institution/new'
    else
      flash[:danger] = 'There was a problem creating Cart.'
      render :new
    end
  end
end
