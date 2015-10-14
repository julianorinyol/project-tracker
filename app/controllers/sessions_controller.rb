class SessionsController < ApplicationController

  def new
    redirect_to '/auth/facebook'
  end

  def create
    auth = request.env["omniauth.auth"]
    student = Student.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || Student.create_with_omniauth(auth)
    reset_session
    session[:user_id] = student.id
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
