class Reviewer::DashboardController < ApplicationController

  layout 'reviewer'
  before_filter :authenticate_user!, :reviewer?
  
  def index
    @books = Book.order(:name).page params[:page]
  end
  def reviewer?
    redirect_to root_path unless current_user.role == "reviewer"
  end
end
