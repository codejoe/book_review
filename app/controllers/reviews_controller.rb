class ReviewsController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
  end
  def cretae
    def create
    @book   = Book.find(params[:book_id])
    @review = Review.new(params[:review])
    @review.user = current_user
    @review.book = @book
    respond_to do |format|
      if @review.save
        format.html { redirect_to root_path }
        #format.json { render json: @book, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        #format.html { render action: "new" }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  end
end
