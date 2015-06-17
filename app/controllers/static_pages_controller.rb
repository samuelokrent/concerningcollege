class StaticPagesController < ApplicationController
  before_action :admin_login_required, :except => [:about, :contact]

  def about
    @blurb = Blurb.where(:page => "About").first
    @is_admin = admin?
  end

  def contact
    @blurb = Blurb.where(:page => "Contact").first
    @is_admin = admin?
  end

  def update
    @blurb = Blurb.find(params[:id])
    @blurb.content = params[:blurb][:content]
    @blurb.save
    flash.now[:info] = "Blurb updated!"
    render @blurb.page.downcase
  end
end
