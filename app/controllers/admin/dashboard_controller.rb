class Admin::DashboardController < ApplicationController

  # rails generate controller Admin::dashboard index
  # --> create controller admin/dashboard_controller.rb + views/admin/index.html

  # Method for accessing admin page
  layout 'admin'
  before_filter :authenticate_user!, :admin?
  def index

  end
  def admin?
    redirect_to root_path unless current_user.role == "admin"
  end
end
