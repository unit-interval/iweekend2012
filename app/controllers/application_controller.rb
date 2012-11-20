class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_only
  	unless session[:admin]
  		redirect_to root_path
  	end
  end
end
