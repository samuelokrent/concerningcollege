class PostsController < ApplicationController

  before_action :admin_login_required, :except => [:index, :show, :show_url]

  def index
    @posts = Post.all.order("created_at desc")
    if session[:admin]
      puts "ADMIN SET!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    else
      puts "ADMIN NOT SET!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def show_url
    @post = Post.where(:url => params[:post_url]).first
    render "show"
  end

  def new
    @post = Post.new
  end

  def create
    _url = params[:post][:title].downcase.gsub(/\s/, '-').gsub(/[^0-9A-Za-z\-]/, '')
    _content = params[:post][:content]
    @post = Post.create(title: params[:post][:title], content: _content, url: _url)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    if @post.save
      redirect_to @post
    else
      render "edit", id: @post.id
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    @posts = Post.all.order("created_at desc")
    render "index"
  end
end
