class Admin::UsersController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  def admin
    @admin = User.admin
  end
  def visitor
    @visitor = User.visitor
  end
  def reviewer
    @reviewer = User.reviewer
  end
end
