class Admin::CategoriesController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!, :admin?
  
  def index
    @categories = Category.all
  end

  def new 
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to admin_categories_path }
        #format.json { render json: @categoery, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        format.html { render action: "new" }
        #format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end


  def admin?
    redirect_to root_path unless current_user.role == "admin"
  end
  
  private

    def category_params
      params.require(:category).permit(:name)
    end

end