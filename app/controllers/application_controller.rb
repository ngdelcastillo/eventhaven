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
end
