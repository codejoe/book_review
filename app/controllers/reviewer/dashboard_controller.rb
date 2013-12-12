class Reviewer::DashboardController < ApplicationController

  layout 'reviewer'

  def index
    @books = Book.all
  end
end
