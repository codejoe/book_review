class CommentsController < ApplicationController
  def index
  end
  def new
    #@book = Book.find_by(id: params[:book_id])
    @comment = Comment.new user:current_user
  end
  def create
    @comment = Comment.new(comment_params)
    @book = Book.find_by_id(params[:book_id])
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        @book.add_comment @comment
        format.html { redirect_to book_path(@book) }
        #format.json { render json: @book, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        #format.html { render action: "new" }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
