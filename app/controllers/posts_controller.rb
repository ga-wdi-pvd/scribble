class PostsController < ApplicationController
  def index
    @post = Post.all
    @new = Post.create(params[:text])
  end

  def show
    @post = Post.find(params[:id].to_i)
    @comment = Comment.where(post_id: @post)
  end
end
