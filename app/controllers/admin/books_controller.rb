class Admin::BooksController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!, :admin?
  def index
    @books = Book.all
  end
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    respond_to do |format|
      if @book.save
        format.html { redirect_to root_path }
        #format.json { render json: @book, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        #format.html { render action: "new" }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  def admin?
    redirect_to root_path unless current_user.role == "admin"
  end
  private
    def book_params
      params.require(:book).permit(:name,:date_release,:photo)
    end
end
