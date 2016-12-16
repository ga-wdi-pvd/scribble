class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id].to_i)
    @comments = Comment.where(post_id: @post)
  end

end
