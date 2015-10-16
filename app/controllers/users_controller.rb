class UsersController < ApplicationController
  def index
    page = 'index'
    if !current_user.nil? && current_user.type.nil?
      @user = current_user
      page = 'choose-role'
    elsif current_user
      @projects = Project.all
      page = "/projects/index"
    end
    render page
  end

  def student
    current_user.update(type: 'Student')
    redirect_to projects_path
  end

  def employer
    current_user.update(type: 'Employer')
    redirect_to projects_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user]
    end
end
