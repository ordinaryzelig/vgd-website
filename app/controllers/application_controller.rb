class ApplicationController < ActionController::Base

  protect_from_forgery

  protected

  def authenticated?
    request.authorization.present?
  end
  helper_method :authenticated?

end
