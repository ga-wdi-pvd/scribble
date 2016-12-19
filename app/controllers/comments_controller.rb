class CommentsController < ApplicationController
  before_action :set_comment, except: [:new, :create]
  before_action :set_post

  def new
    @comment = Comment.new
  end

  def create
    @post.comments.create(comment_params)
    redirect_to @post
  end

  def update
    @comment.update(comment_params)
    redirect_to @post
  end

  def destroy
    @comment.delete
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
