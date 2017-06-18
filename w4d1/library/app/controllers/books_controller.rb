class BooksController < ApplicationController
  def index
    @books = Book.all

    render :index #optional, rails will automatically look for an index view
  end

  def new
    render :new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_url
  end

  def destroy
    book = Book.find_by(id: params[:id])

    book.destroy
    redirect_to books_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
