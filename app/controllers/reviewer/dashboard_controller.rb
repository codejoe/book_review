class Reviewer::DashboardController < ApplicationController

  layout 'reviewer'

  def index
    @books = Book.order(:name).page params[:page]
  end
end
