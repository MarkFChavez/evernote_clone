class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize

  private

  def authorize
    unless session[:user_id]
      redirect_to signin_url, notice: "Please signin"
    end
  end
end
