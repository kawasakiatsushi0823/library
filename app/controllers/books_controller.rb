class BooksController < ApplicationController
  respond_to :html

  def index
    @books = Book.where(deleted_at: nil)
  end

  def new
    @book = Book.new
    @book.editions.build
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      respond_with @book, location: books_path
    else
      respond_with @book.errors, location: book_new_path
    end
  end

  def edit
    @book = Book.find(params[:id])
    @book.editions.build
  end

  def update
    @book = Book.find(params[:id])
    #@book.editions

    if @book.update_attributes(book_params)
      respond_with @book, location: books_path
    else
      render 'edit'
      #respond_with @book.errors, location: book_edit_path
    end
  end


  def delete
    @book = Book.find(params[:book_id])
    if @book.update(deleted_at: Time.now)
      respond_with @book, location: books_path
    else
      respond_with @book.errors, location: book_edit_path
    end
  end

  def deleted_books
    @books = Book.where('deleted_at IS NOT NULL')
  end

  private
    def book_params
      puts params
      params.require(:book).permit(:title, :status, {editions_attributes: [:id, :book_id, :kind]},)
    end

end
