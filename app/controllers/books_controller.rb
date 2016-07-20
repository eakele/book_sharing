class BooksController < ApplicationController
  # new method which instanciate a new object when called
   def new
        @book = Book.new
   end
 ########################################
  def index
      @books = Book.where(:user_id => current_user.id)
  end

 ########################################
 def destroy
       @book = Book.find(params[:id])
       @book.destroy
       flash[:success] = "The book was destroyed."
       redirect_to root_path
 end
 ########################################

   def create
         @book = Book.new(book_params)
         @book.user_id = current_user.id
        if @book.save
            flash[:success] = 'Book was successfully added.'
           redirect_to '/'
         else
           flash[:danger] = 'There was a problem creating the Book.'
           render :new
         end
    end

 ########################################
 def edit
      @book = Book.find(params[:id])
 end
 ########################################
  def update
        book = Book.find(params[:hidden_book_id])
        if book.update(book_params)
          flash[:notice] = "Book successfully updated"
          redirect_to '/'
        else
          flash[:danger] = 'There was a problem updating the Book.'
          render :edit
        end
  end

 ########################################
   def book_params
      params.require(:book).permit(:title, :author, :standard, :subject, :language, :message,:image)
   end
end
