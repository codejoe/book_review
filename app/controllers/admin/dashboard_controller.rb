class Admin::DashboardController < ApplicationController

  # rails generate controller Admin::dashboard index
  # --> create controller admin/dashboard_controller.rb + views/admin/index.html

  # Method for accessing admin page
  before_filter :authenticate_user!

  def index
  end
end
