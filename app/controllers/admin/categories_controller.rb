class Admin::CategoriesController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!, :admin?
  def index
  end
  def admin?
    redirect_to root_path unless current_user.role == "admin"
  end
end
