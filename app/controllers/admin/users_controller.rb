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
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path }
        #format.json { render json: @book, status: :created, location: @book }
        #format.js { return render status: 200 }
      else
        format.html { render action: "new" }
        #format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  def new
    @role = params[:role]
    @user = User.new
  end
  private
    def user_params
      params.require(:user).permit(:email,:password,:role)
    end
end
