#
class PostsController < ApplicationController
# http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @posts = Post.find(params[:id])
    @comments = Comment.where(post_id: params[:id])
  end

  def new
    @posts = Post.new
  end

  def edit
    @posts = Post.find(params[:id])
  end

  def create
    @posts = Post.new(post_params)

    if @posts.save
      redirect_to @posts
    else
      render 'new'
    end
  end

  def update
    @posts = Post.find(params[:id])

    if @posts.update(post_params)
      redirect_to @posts
    else
      render 'edit'
    end
  end

  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:author, :title, :body)
  end
end
