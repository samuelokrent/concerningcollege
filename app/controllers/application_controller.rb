class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin_login_required
    redirect_to controller: "session", action: "new" unless admin?
  end

  def admin?
    return (session[:admin] == true)
  end

end
