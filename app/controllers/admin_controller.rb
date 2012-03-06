class AdminController < ApplicationController

  before_filter :require_authentication, except: [:login, :logout]

  def index
    redirect_to articles_path
  end

  def login
    if request.post? && params[:password] == ENV['AUTH_PASSWORD']
      session[:authenticated] = true
      redirect_to admin_path
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end

end
