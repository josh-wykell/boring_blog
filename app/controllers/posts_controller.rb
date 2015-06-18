class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  before_action :require_authentication, :except => [:index, :show]

  def index
  if params[:tag]
    @posts = Post.tagged_with(params[:tag])
  else
    @posts = Post.all
  end
end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfuly created'
    else 
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to@post, notice: 'Review was successfuly updated'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, notice: 'Post was deleted'
  end

  def show
    @post=Post.find(params[:id])
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:user_id, :title, :body, :avatar, :all_tags)
    end
end
