class CartController < ApplicationController
  before_filter :authenticate_user!

  ########################################

  def index
    # @books = Book.all
    @books = Book.where.not(:id => Cart.select(:book_id).uniq)
  end

  ########################################

  def show
    @book = Book.find(params[:id])
  end

  ########################################

  def new
  end

  ########################################

  def create
     cart = Cart.new
     book = Book.where(id: params[:book_id])
     volunteer = Volunteer.find_by(user_id: current_user.id)

     cart.book_id = params[:book_id]
     #check if the user is registered as a volunteer before adding institution
     if (Volunteer.exists?(:user_id => current_user.id)&&!(Book.exists?(:user_id => current_user.id)))
       cart.volunteer_id = volunteer.id
       cart.save
       flash[:success] = 'Book was successfully added to Cart'
       redirect_to '/institution/new'
     #make sure a user couldn't registere as a volunteer for his/her book
      elsif (book[0].user_id == current_user.id)
       flash[:danger] = 'You cannot volunteer for your book.'
       redirect_to "/books/show"
     else
       flash[:danger] = 'Please register first.'
       redirect_to '/volunteer/new'
     end
    end
end
