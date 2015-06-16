class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  before_action :require_authenticated_user, :except => [:index, :show]

  def index
    @posts = Post.all
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
    @post.destroy
    redirect_to post_url, notice: 'Post was deleted'
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
