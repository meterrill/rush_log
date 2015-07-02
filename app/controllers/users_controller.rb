class UsersController < ApplicationController
  before_filter :require_admin

  def index
    @users = User.all
  end

private
  def require_admin
    unless admin_signed_in?
    flash[:error] = "You must be logged in as admin to access this section."
    redirect_to root_path
    end
  end
end
