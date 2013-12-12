class Admin::UsersController < ApplicationController
  layout "admin"
  before_filter :authenticate_user!
  def admin
    @admins = User.admin
  end
  def visitor
    @visitors = User.visitor
  end
  def reviewer
    @reviewers = User.reviewer
  end
end
