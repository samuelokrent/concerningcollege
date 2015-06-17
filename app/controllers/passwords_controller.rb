class PasswordsController < ApplicationController
  before_action :admin_login_required

  def change
    @password = Password.new
  end

  def update
    if params[:password][:password] == params[:password][:confirmation]
      @password = Password.all.first
      @password.digest = Digest::SHA1.base64digest params[:password][:password]
      @password.save
      redirect_to root_path
    else
      @password = Password.new
      flash.now[:info] = "Passwords must match"
      render "change"
    end
  end
end
