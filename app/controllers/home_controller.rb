class HomeController < ApplicationController

  def index
    @recent_post = Post.order("created_at DESC").limit(3)
  end
end
