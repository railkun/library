class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      BookMailer.book_created(@book).deliver
      redirect_to root_path, notice: 'Book is created'
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to root_path, notice: 'Book was updated'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to root_path, notice: 'Book was destroyed!!!'
    else
      redirect_to root_path, alert: 'Book wasnt destroyed'
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :isbn, :description, :category_id, :author_id, :cover)
  end

end
