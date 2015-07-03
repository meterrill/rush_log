class UsersController < ApplicationController
  before_filter :require_admin

  helper_method :sort_column, :sort_direction

  def index
    @users = User.order(sort_column + " " + sort_direction)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "User successfully updated!"
      redirect_to users_path
    else
      render :edit
    end
  end

private
  def require_admin
    unless admin_signed_in?
    flash[:error] = "You must be logged in as admin to access this section."
    redirect_to :back
    end
  end

  def user_params
    params.require(:user).permit(:email)
  end

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "email"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
