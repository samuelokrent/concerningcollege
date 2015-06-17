class SessionController < ApplicationController
  def new
    @password = Password.new
  end

  def create
    attempted_pass = Digest::SHA1.base64digest params[:password][:password]
    if attempted_pass == Password.all.first.digest
      session[:admin] = true
      redirect_to root_path
    else
      @password = Password.new
      render "new"
    end
  end

  def destroy
    session.delete(:admin)
    redirect_to root_path
  end
end
