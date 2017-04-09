class BooksController < ApplicationController

  def index
    @books = params[:type] == 'prime' ? Book.all_prime : Book.all
    render json: @books
  end

  def top_5
    book_ids = SingleSort.joins(:book).where(books: {available: true}).order(:position).limit(5).ids
    @books = Book.where(id: book_ids)
    render json: @books
  end

end
