class StaticPagesController < ApplicationController
  def home
    # @books = Book.all
    @books = Book.where.not(:id => Cart.select(:book_id).uniq)
    # @books = Book.where{id.not_in Cart.select{book_id}.uniq}
  end
end
