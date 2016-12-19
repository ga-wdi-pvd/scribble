#
class CommentsController < ApplicationController
#http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def edit
    @comments = Comment.find(params[:id])
    @posts = Post.find(params[:post_id])
  end

  def create
    @posts = Post.find(params[:post_id])
    @comment = @posts.comments.create(comment_params)
    redirect_to post_path(@posts)
  end

  def update
    @posts = Post.find(params[:post_id])
    @comments = @posts.comments.find(params[:id])

    if @comments.update(comment_params)
      redirect_to post_path(@posts)
    else
      render 'edit'
    end
  end

  def destroy
    @posts = Post.find(params[:post_id])
    @comment = @posts.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@posts)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
