class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @posts = Post.find(params[:id])
    @comments = Comment.find(params[:id])

  end
end
