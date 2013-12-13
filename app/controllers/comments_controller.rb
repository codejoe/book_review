class CommentsController < BooksController

  def new
    #debugger
    @comment = Comment.new user:current_user
  end
end
