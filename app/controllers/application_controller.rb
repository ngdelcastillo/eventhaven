class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :vary_layout

  def vary_layout
    if user_signed_in?
      "application"
    else
      "public"
    end
  end
end
