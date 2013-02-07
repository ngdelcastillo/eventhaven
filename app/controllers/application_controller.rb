class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :vary_layout

  def vary_layout
    # controller = params[:controller]
    # unless controller == "dashboard" && user_signed_in?
      "public"
    # else
    #   "application"
    # end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
