class AdminsController < ApplicationController

  def index
  end
  def login
    username = params['username']
    password = params['password']
    respond_to do |format|
      if Admin.chek username, password
        format.html { redirect_to root_path}
      else
        format.html { render "salah password"}
      end
    end
  end

end