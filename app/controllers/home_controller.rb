class HomeController < ApplicationController

  def index 
    @user = User.new
    @categories = Category.all
    @books = Book.limit(6)
  end



end
