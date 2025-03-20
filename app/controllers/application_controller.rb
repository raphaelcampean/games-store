class ApplicationController < ActionController::Base
  protected

  def authenticate_admin!
    redirect_to root_path, alert: "Access denied." unless user_signed_in? && current_user.admin?
  end
end
