class CategoriesController < ApplicationController
  def show
    @user = User.new
    cat   = Category.find_by_id params[:id]
    @books = cat.books.order(:name).page params[:page] 
  end
end
