class StaticPagesController < ApplicationController
  def home
  end
  def index
    @books = Book.all
  end
  def show
  end

end
