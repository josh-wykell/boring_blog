class HomeController < ApplicationController

  def index
    @recent_posts = Post.order("created_at DESC").limit(3)
  end
end
