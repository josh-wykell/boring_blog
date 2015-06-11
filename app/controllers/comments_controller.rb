class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params)
    redirect_to show_post_path(@post), notice: "comment added"
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :email, :body)
  end
end

