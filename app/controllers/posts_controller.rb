class PostsController < ApplicationController
  def index
    @post = post.all
  end
end
