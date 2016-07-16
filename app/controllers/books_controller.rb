class BooksController < ApplicationController
  before_filter :authenticate_user!
  # new method which instanciate a new object when called
   def new
     @book = Book.new
   end
 ########################################
   def show
     @book = Book.where(:profile_id => params[:id])
    end

 ########################################
   def create
         @book = Book.new(book_params)
         @book.profile_id = current_user.id
         if @book.save
           flash[:notice] = "Profile successfully created"
           redirect_to '/'
         else
           redirect_to '/login'
         end
    end
   def book_params
     params.require(:book).permit(:title, :author, :standard, :subject, :language, :message)
   end
end
