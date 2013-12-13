class HomeController < ApplicationController

  def index 
    @user = User.new
    @categories = Category.all
    @books = Book.limit(6)
    @featured = Book.featured.first
    @review = Review.last(3)
  end



end
