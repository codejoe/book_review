class CommentsController < ApplicationController

  def new
    #@book = Book.find_by(id: params[:book_id])
    @comment = Comment.new user:current_user
  end
end
