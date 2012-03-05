class ApplicationController < ActionController::Base

  protect_from_forgery

  protected

  def require_authentication
    redirect_to login_path unless authenticated?
  end

  def authenticated?
    session[:authenticated]
  end
  helper_method :authenticated?

end
