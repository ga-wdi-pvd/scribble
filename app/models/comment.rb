class Comment < ApplicationRecord
  def show
    @comment = comment.find(params[:id])
end

def new
end
