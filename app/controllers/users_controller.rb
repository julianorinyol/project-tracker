class UsersController < ApplicationController
  def index
    page = 'index'
    if !current_user.nil? && current_user.type.nil?
      @user = current_user
      page = 'choose-role'
    end
    render page
  end

  def student
    current_user.update(type: 'Student')
    redirect_to root_path
  end

  def leader
    current_user.update(type: 'Leader')
    redirect_to root_path
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
