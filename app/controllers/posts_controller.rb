class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    # @comments = Comment.where(post_id: @post)
  end

  def edit
    @post = Post.find(params[:id])
  end
  
end
