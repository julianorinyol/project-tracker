class UsersController < ApplicationController
  def index
    page = 'index'
    if !current_user.nil? && current_user.type.nil?
      page = 'choose-role'
    end
    render page
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
