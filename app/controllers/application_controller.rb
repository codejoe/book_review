class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_admin
    @_current_admin ||= session[:current_admin_id] &&
      Admin.find_by(id: session[:current_admin_id])
  end
end
